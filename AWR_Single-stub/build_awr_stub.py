"""Build and simulate the AWR Microwave Office Single-Stub project (3.5 GHz).

Matches Phoi/Singlestub.emp and Latex/main.tex:
  - Substrate FR-4: Er = 4.4, H = 1.6 mm, T = 0.035 mm, Tand = 0.02,
    Rho = 0.689 (Copper normalized to Gold in AWR MSUB)
  - Load: 30 Ohm in series with C_L = 1.13682 pF (-j40 Ohm at 3.5 GHz)
  - Open stub modeled directly with MLEF (includes open-end fringing)
  - Schematics:
      Stub_n1_Ideal, Stub_n2_Ideal (TLIN + TLOC)
      Stub1_Microstrip (W=3.03411, d=1.50, l=15.75 mm)
      Stub2_Microstrip (W=3.03411, d=8.65, l=6.00 mm)
      Stub1_Sweep_L, Stub1_Sweep_W, Stub2_Sweep_L, Stub2_Sweep_W (+/-5%, +/-10% on stub)
  - Graphs: S11_Ideal, S11_S21_Stub1, S11_S21_Stub2, Smith_Stub1, Smith_Stub2,
      Tol_stub1_L, Tol_stub1_W, Tol_stub2_L, Tol_stub2_W
"""

import os
import sys

AWR_PY_PATH = r"C:\Program Files (x86)\AWR\AWRDE\19\python\packages"
if AWR_PY_PATH not in sys.path:
    sys.path.insert(0, AWR_PY_PATH)

import pyawr.mwoffice as mwoffice


def set_units(project):
    """Configure project units to GHz, mm, nH, pF, Ohm."""
    units = project.Units
    unit_map = {
        mwoffice.mwUnitType.mwUT_Frequency: mwoffice.mwUnitMultType.mwUMT_Giga,
        mwoffice.mwUnitType.mwUT_Length: mwoffice.mwUnitMultType.mwUMT_m,
        mwoffice.mwUnitType.mwUT_Inductance: mwoffice.mwUnitMultType.mwUMT_n,
        mwoffice.mwUnitType.mwUT_Capacitance: mwoffice.mwUnitMultType.mwUMT_p,
        mwoffice.mwUnitType.mwUT_Resistance: mwoffice.mwUnitMultType.mwUMT_none,
    }
    for utype, umult in unit_map.items():
        if units.Exists(int(utype)):
            units.Item(int(utype)).MultType = int(umult)


def connect_nodes(schem, n1, n2):
    """Add an orthogonal wire connecting two element nodes."""
    x1, y1 = n1.x, n1.y
    x2, y2 = n2.x, n2.y
    if x1 == x2 or y1 == y2:
        schem.Wires.Add(x1, y1, x2, y2)
    else:
        schem.Wires.Add(x1, y1, x2, y1)
        schem.Wires.Add(x2, y1, x2, y2)


def add_msub(schem, x=0, y=-2000):
    """Add FR-4 MSUB named SUB1 with Copper Rho = 0.689 (normalized to Gold)."""
    msub = schem.Elements.Add("MSUB", x, y)
    msub.Parameters("Er").ValueAsString = "4.4"
    msub.Parameters("H").ValueAsString = "1.6"
    msub.Parameters("T").ValueAsString = "0.035"
    msub.Parameters("Rho").ValueAsString = "0.689"
    msub.Parameters("Tand").ValueAsString = "0.02"
    msub.Parameters("ErNom").ValueAsString = "4.4"
    msub.Parameters("Name").ValueAsString = "SUB1"
    return msub


def add_ideal_stub_network(schem, el_d, el_l):
    """Ideal transmission-line single-stub network (TLIN + TLOC + RC load)."""
    p1 = schem.Elements.Add("PORT", 0, 0)
    p1.Parameters("Z").ValueAsString = "50"

    tloc = schem.Elements.Add("TLOC", 1500, 800, RotationAngle=270)
    tloc.Parameters("Z0").ValueAsString = "50"
    tloc.Parameters("EL").ValueAsString = str(el_l)
    tloc.Parameters("F0").ValueAsString = "3.5"

    tlin = schem.Elements.Add("TLIN", 2500, 0)
    tlin.Parameters("Z0").ValueAsString = "50"
    tlin.Parameters("EL").ValueAsString = str(el_d)
    tlin.Parameters("F0").ValueAsString = "3.5"

    c_load = schem.Elements.Add("CAP", 4200, 0)
    c_load.Parameters("C").ValueAsString = "1.13682"

    p2 = schem.Elements.Add("PORT", 5800, 0, Flipped=True)
    p2.Parameters("Z").ValueAsString = "30"

    connect_nodes(schem, p1.Nodes(1), tlin.Nodes(1))
    schem.Wires.Add(tloc.Nodes(1).x, p1.Nodes(1).y, tloc.Nodes(1).x, tloc.Nodes(1).y)
    connect_nodes(schem, tlin.Nodes(2), c_load.Nodes(1))
    connect_nodes(schem, c_load.Nodes(2), p2.Nodes(1))


def add_microstrip_stub_network(
    schem,
    d_expr,
    l_expr,
    w_main="3.03411",
    w_stub="3.03411",
    sweep_var=None,
):
    """Microstrip single-stub network using MTEE + MLEF (open stub) + MLIN(d) + RC load."""
    add_msub(schem, x=0, y=-2200)

    p1 = schem.Elements.Add("PORT", 0, 0)
    p1.Parameters("Z").ValueAsString = "50"

    mtee = schem.Elements.Add("MTEE", 1500, 0)
    mtee.Parameters("W1").ValueAsString = w_main
    mtee.Parameters("W2").ValueAsString = w_main
    mtee.Parameters("W3").ValueAsString = w_main
    mtee.Parameters("MSUB").ValueAsString = "SUB1"

    # MLEF directly models open-ended microstrip stub (length L + open-end effect)
    stub = schem.Elements.Add("MLEF", mtee.Nodes(3).x, mtee.Nodes(3).y + 600, RotationAngle=270)
    stub.Parameters("W").ValueAsString = w_stub
    stub.Parameters("L").ValueAsString = l_expr
    stub.Parameters("MSUB").ValueAsString = "SUB1"

    line_d = schem.Elements.Add("MLIN", 3200, 0)
    line_d.Parameters("W").ValueAsString = w_main
    line_d.Parameters("L").ValueAsString = d_expr
    line_d.Parameters("MSUB").ValueAsString = "SUB1"

    c_load = schem.Elements.Add("CAP", 4800, 0)
    c_load.Parameters("C").ValueAsString = "1.13682"

    p2 = schem.Elements.Add("PORT", 6400, 0, Flipped=True)
    p2.Parameters("Z").ValueAsString = "30"

    connect_nodes(schem, p1.Nodes(1), mtee.Nodes(1))
    connect_nodes(schem, mtee.Nodes(2), line_d.Nodes(1))
    connect_nodes(schem, mtee.Nodes(3), stub.Nodes(1))
    connect_nodes(schem, line_d.Nodes(2), c_load.Nodes(1))
    connect_nodes(schem, c_load.Nodes(2), p2.Nodes(1))

    if sweep_var:
        swp = schem.Elements.Add("SWPVAR", 0, 2400)
        swp.Parameters("VarName").ValueAsString = f'"{sweep_var}"'
        swp.Parameters("Values").ValueAsString = "stepped(0.9, 1.1, 0.05)"


def print_summary(graph, label):
    """Print S11 and S21 at 3.5 GHz and -10 dB bandwidth."""
    m_s11 = graph.Measurements(1)
    m_s21 = graph.Measurements(2) if graph.Measurements.Count >= 2 else None
    if m_s11.TraceCount == 0:
        print(f"  [{label}] No trace data")
        return
    xs = m_s11.XValues
    ys = m_s11.YValues(1)
    scale = 1e9 if xs[0] > 1e6 else 1.0
    freqs_ghz = [x / scale for x in xs]
    idx_35 = min(range(len(freqs_ghz)), key=lambda i: abs(freqs_ghz[i] - 3.5))
    idx_min = min(range(len(ys)), key=lambda i: ys[i])
    below_10 = [freqs_ghz[i] for i, y in enumerate(ys) if y <= -10.0]
    bw_str = (
        f"{(below_10[-1] - below_10[0]) * 1000:.0f} MHz ({below_10[0]:.3f}-{below_10[-1]:.3f} GHz)"
        if below_10
        else "0 MHz (none <= -10 dB)"
    )
    s21_str = ""
    if m_s21 and m_s21.TraceCount > 0:
        s21_str = f" | S21@3.5GHz = {m_s21.YValues(1)[idx_35]:.3f} dB"
    print(
        f"  [{label}] S11@3.5GHz = {ys[idx_35]:.2f} dB | "
        f"min = {ys[idx_min]:.2f} dB @{freqs_ghz[idx_min]:.3f} GHz | "
        f"BW(-10dB) = {bw_str}{s21_str}"
    )


def main():
    out_dir = os.path.dirname(os.path.abspath(__file__))
    emp_path = os.path.join(out_dir, "Single_Stub.emp")

    awrde = mwoffice.CMWOffice()
    awrde.New("Single_Stub")
    proj = awrde.Project
    set_units(proj)

    # Frequency sweep: 2.0 to 5.0 GHz, step 1 MHz
    proj.Frequencies.Clear()
    freqs_hz = [round(2.0e9 + i * 1.0e6) for i in range(3001)]
    proj.Frequencies.AddMultiple(freqs_hz)

    # 1. Ideal TLIN + TLOC schematics
    s_id1 = proj.Schematics.Add("Stub_n1_Ideal")
    add_ideal_stub_network(s_id1, el_d=15.0, el_l=130.8934)

    s_id2 = proj.Schematics.Add("Stub_n2_Ideal")
    add_ideal_stub_network(s_id2, el_d=75.0, el_l=49.1066)

    # 2. Microstrip tuned schematics (matching Phoi & Table 3.3 of main.tex)
    s1 = proj.Schematics.Add("Stub1_Microstrip")
    add_microstrip_stub_network(s1, d_expr="1.50", l_expr="15.75")

    s2 = proj.Schematics.Add("Stub2_Microstrip")
    add_microstrip_stub_network(s2, d_expr="8.65", l_expr="6.00")

    # 3. Parametric Sweeps (+/-5%, +/-10% on stub L or W)
    s1_l = proj.Schematics.Add("Stub1_Sweep_L")
    s1_l.Equations.Add("l0 = 15.75", 0, 1900)
    s1_l.Equations.Add("k = 1.0", 0, 2150)
    add_microstrip_stub_network(s1_l, d_expr="1.50", l_expr="l0*k", sweep_var="k")

    s1_w = proj.Schematics.Add("Stub1_Sweep_W")
    s1_w.Equations.Add("W0 = 3.03411", 0, 1900)
    s1_w.Equations.Add("k = 1.0", 0, 2150)
    add_microstrip_stub_network(s1_w, d_expr="1.50", l_expr="15.75", w_stub="W0*k", sweep_var="k")

    s2_l = proj.Schematics.Add("Stub2_Sweep_L")
    s2_l.Equations.Add("l0 = 6.00", 0, 1900)
    s2_l.Equations.Add("k = 1.0", 0, 2150)
    add_microstrip_stub_network(s2_l, d_expr="8.65", l_expr="l0*k", sweep_var="k")

    s2_w = proj.Schematics.Add("Stub2_Sweep_W")
    s2_w.Equations.Add("W0 = 3.03411", 0, 1900)
    s2_w.Equations.Add("k = 1.0", 0, 2150)
    add_microstrip_stub_network(s2_w, d_expr="8.65", l_expr="6.00", w_stub="W0*k", sweep_var="k")

    # Graphs
    g_id = proj.Graphs.Add("S11_Ideal", mwoffice.mwGraphType.mwGT_Rectangular)
    g_id.Measurements.Add("Stub_n1_Ideal", "DB(|S(1,1)|)")
    g_id.Measurements.Add("Stub_n2_Ideal", "DB(|S(1,1)|)")

    g1 = proj.Graphs.Add("S11_S21_Stub1", mwoffice.mwGraphType.mwGT_Rectangular)
    g1.Measurements.Add("Stub1_Microstrip", "DB(|S(1,1)|)")
    g1.Measurements.Add("Stub1_Microstrip", "DB(|S(2,1)|)")

    g2 = proj.Graphs.Add("S11_S21_Stub2", mwoffice.mwGraphType.mwGT_Rectangular)
    g2.Measurements.Add("Stub2_Microstrip", "DB(|S(1,1)|)")
    g2.Measurements.Add("Stub2_Microstrip", "DB(|S(2,1)|)")

    gs1 = proj.Graphs.Add("Smith_Stub1", mwoffice.mwGraphType.mwGT_SmithChart)
    gs1.Measurements.Add("Stub1_Microstrip", "S(1,1)")

    gs2 = proj.Graphs.Add("Smith_Stub2", mwoffice.mwGraphType.mwGT_SmithChart)
    gs2.Measurements.Add("Stub2_Microstrip", "S(1,1)")

    for gname, sname in [
        ("Tol_stub1_L", "Stub1_Sweep_L"),
        ("Tol_stub1_W", "Stub1_Sweep_W"),
        ("Tol_stub2_L", "Stub2_Sweep_L"),
        ("Tol_stub2_W", "Stub2_Sweep_W"),
    ]:
        g = proj.Graphs.Add(gname, mwoffice.mwGraphType.mwGT_Rectangular)
        g.Measurements.Add(sname, "DB(|S(1,1)|)")

    proj.Simulator.Analyze()
    print("=== AWR_Single-stub Simulation Results (MLEF + Rho=0.689) ===")
    print_summary(g1, "Stub1_Microstrip")
    print_summary(g2, "Stub2_Microstrip")

    proj.SaveAs(emp_path)
    print(f"Saved: {emp_path}")


if __name__ == "__main__":
    main()
