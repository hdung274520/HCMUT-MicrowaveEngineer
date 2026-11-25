"""Build and simulate the AWR Microwave Office LC Matching project (3.5 GHz).

Creates AWR_LC/LC_Matching.emp matching the design in Latex/main.tex:
  - Load: Z_L = 30 - j40 Ohm at f0 = 3.5 GHz (Z0 = 50 Ohm)
  - LC_Ideal: shunt C_p = 0.743 pF at input + series L_s = 2.933 nH
  - LC_Sweep_L: parametric sweep of L_s (+/-5%, +/-10%)
  - LC_Sweep_C: parametric sweep of C_p (+/-5%, +/-10%)
  - Graphs: S11_S21_LC, Smith_LC, Sweep_L, Sweep_C
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
    """Add an orthogonal wire (or straight wire) connecting two element nodes."""
    x1, y1 = n1.x, n1.y
    x2, y2 = n2.x, n2.y
    if x1 == x2 or y1 == y2:
        schem.Wires.Add(x1, y1, x2, y2)
    else:
        schem.Wires.Add(x1, y1, x2, y1)
        schem.Wires.Add(x2, y1, x2, y2)


def add_lc_network(schem, L_expr="2.933", C_expr="0.743", sweep_var=None):
    """Populate a schematic with Port 1 (50 Ohm), shunt C_p, series L_s, Port 2 (30-j*40)."""
    p1 = schem.Elements.Add("PORT", 0, 0)
    p1.Parameters("Z").ValueAsString = "50"

    c_shunt = schem.Elements.Add("CAP", 1500, 1000, RotationAngle=270)
    c_shunt.Parameters("C").ValueAsString = C_expr

    gnd = schem.Elements.Add("GND", c_shunt.Nodes(2).x, c_shunt.Nodes(2).y + 500)

    l_ser = schem.Elements.Add("IND", 3000, 0)
    l_ser.Parameters("L").ValueAsString = L_expr

    p2 = schem.Elements.Add("PORT", 5000, 0, Flipped=True)
    p2.Parameters("Z").ValueAsString = "30-j*40"

    # Wire horizontal signal path and shunt branch
    connect_nodes(schem, p1.Nodes(1), l_ser.Nodes(1))
    schem.Wires.Add(c_shunt.Nodes(1).x, p1.Nodes(1).y, c_shunt.Nodes(1).x, c_shunt.Nodes(1).y)
    connect_nodes(schem, c_shunt.Nodes(2), gnd.Nodes(1))
    connect_nodes(schem, l_ser.Nodes(2), p2.Nodes(1))

    if sweep_var:
        swp = schem.Elements.Add("SWPVAR", 0, 2200)
        swp.Parameters("VarName").ValueAsString = f'"{sweep_var}"'
        swp.Parameters("Values").ValueAsString = "stepped(0.9, 1.1, 0.05)"


def print_summary(graph, meas_idx=1, label="S11"):
    """Print S11 at 3.5 GHz and -10 dB bandwidth from a simulated measurement."""
    meas = graph.Measurements(meas_idx)
    if meas.TraceCount == 0:
        print(f"  [{label}] No trace data")
        return
    xs = meas.XValues
    ys = meas.YValues(1)
    # Find closest to 3.5 GHz (xs in Hz or GHz depending on DataUnit)
    scale = 1e9 if xs[0] > 1e6 else 1.0
    freqs_ghz = [x / scale for x in xs]
    idx_35 = min(range(len(freqs_ghz)), key=lambda i: abs(freqs_ghz[i] - 3.5))
    idx_min = min(range(len(ys)), key=lambda i: ys[i])
    below_10 = [freqs_ghz[i] for i, y in enumerate(ys) if y <= -10.0]
    bw_mhz = (below_10[-1] - below_10[0]) * 1000 if below_10 else 0.0
    print(
        f"  [{label}] @3.5GHz = {ys[idx_35]:.2f} dB | "
        f"min = {ys[idx_min]:.2f} dB @{freqs_ghz[idx_min]:.3f} GHz | "
        f"BW(-10dB) = {bw_mhz:.0f} MHz ({below_10[0]:.3f}-{below_10[-1]:.3f} GHz)"
    )


def main():
    out_dir = os.path.dirname(os.path.abspath(__file__))
    emp_path = os.path.join(out_dir, "LC_Matching.emp")

    awrde = mwoffice.CMWOffice()
    awrde.New("LC_Matching")
    proj = awrde.Project
    set_units(proj)

    # Frequency sweep: 2.0 to 5.0 GHz, step 1 MHz (in Hz for Frequencies.AddMultiple)
    proj.Frequencies.Clear()
    freqs_hz = [round(2.0e9 + i * 1.0e6) for i in range(3001)]
    proj.Frequencies.AddMultiple(freqs_hz)

    # 1. LC_Ideal schematic
    s_ideal = proj.Schematics.Add("LC_Ideal")
    add_lc_network(s_ideal, L_expr="2.933", C_expr="0.743")

    # 2. LC_Sweep_L schematic
    s_swp_l = proj.Schematics.Add("LC_Sweep_L")
    s_swp_l.Equations.Add("L0 = 2.933", 0, 1800)
    s_swp_l.Equations.Add("k = 1.0", 0, 2000)
    add_lc_network(s_swp_l, L_expr="L0*k", C_expr="0.743", sweep_var="k")

    # 3. LC_Sweep_C schematic
    s_swp_c = proj.Schematics.Add("LC_Sweep_C")
    s_swp_c.Equations.Add("C0 = 0.743", 0, 1800)
    s_swp_c.Equations.Add("k = 1.0", 0, 2000)
    add_lc_network(s_swp_c, L_expr="2.933", C_expr="C0*k", sweep_var="k")

    # 4. LC_Microstrip schematic (FR-4 PCB layout: 50-ohm lines, shunt pad+gap+via for Cp, series gap for Ls)
    s_lay = proj.Schematics.Add("LC_Microstrip")
    msub = s_lay.Elements.Add("MSUB", 0, -2000)
    for k, v in [("Er", "4.4"), ("H", "1.6"), ("T", "0.035"), ("Rho", "0.689"), ("Tand", "0.02"), ("ErNom", "4.4"), ("Name", "SUB1")]:
        msub.Parameters(k).ValueAsString = v
    p1 = s_lay.Elements.Add("PORT", 0, 0)
    p1.Parameters("Z").ValueAsString = "50"
    m1 = s_lay.Elements.Add("MLIN", 1000, 0)
    m1.Parameters("W").ValueAsString = "3.083"; m1.Parameters("L").ValueAsString = "5.0"; m1.Parameters("MSUB").ValueAsString = "SUB1"
    tee = s_lay.Elements.Add("MTEE", 2500, 0)
    tee.Parameters("W1").ValueAsString = "3.083"; tee.Parameters("W2").ValueAsString = "3.083"; tee.Parameters("W3").ValueAsString = "1.0"; tee.Parameters("MSUB").ValueAsString = "SUB1"
    pad1 = s_lay.Elements.Add("MLIN", tee.Nodes(3).x, tee.Nodes(3).y + 500, RotationAngle=270)
    pad1.Parameters("W").ValueAsString = "1.0"; pad1.Parameters("L").ValueAsString = "0.8"; pad1.Parameters("MSUB").ValueAsString = "SUB1"
    gap_c = s_lay.Elements.Add("MGAP", tee.Nodes(3).x, tee.Nodes(3).y + 1600, RotationAngle=270)
    gap_c.Parameters("W").ValueAsString = "1.0"; gap_c.Parameters("S").ValueAsString = "1.0"; gap_c.Parameters("MSUB").ValueAsString = "SUB1"
    cp = s_lay.Elements.Add("CAP", tee.Nodes(3).x + 900, tee.Nodes(3).y + 1600, RotationAngle=270)
    cp.Parameters("C").ValueAsString = "0.743"
    pad2 = s_lay.Elements.Add("MLIN", tee.Nodes(3).x, tee.Nodes(3).y + 2700, RotationAngle=270)
    pad2.Parameters("W").ValueAsString = "1.0"; pad2.Parameters("L").ValueAsString = "1.0"; pad2.Parameters("MSUB").ValueAsString = "SUB1"
    via = s_lay.Elements.Add("VIA", tee.Nodes(3).x, tee.Nodes(3).y + 3900, RotationAngle=270)
    for k, v in [("D", "0.6"), ("H", "1.6"), ("T", "0.035"), ("Rho", "0.689")]:
        if via.Parameters.Exists(k):
            via.Parameters(k).ValueAsString = v
    m2 = s_lay.Elements.Add("MLIN", 4000, 0)
    m2.Parameters("W").ValueAsString = "3.083"; m2.Parameters("L").ValueAsString = "0.5"; m2.Parameters("MSUB").ValueAsString = "SUB1"
    gap_l = s_lay.Elements.Add("MGAP", 5500, 0)
    gap_l.Parameters("W").ValueAsString = "3.083"; gap_l.Parameters("S").ValueAsString = "1.0"; gap_l.Parameters("MSUB").ValueAsString = "SUB1"
    ls = s_lay.Elements.Add("IND", 5500, -1000)
    ls.Parameters("L").ValueAsString = "2.933"
    m3 = s_lay.Elements.Add("MLIN", 7000, 0)
    m3.Parameters("W").ValueAsString = "3.083"; m3.Parameters("L").ValueAsString = "5.0"; m3.Parameters("MSUB").ValueAsString = "SUB1"
    p2 = s_lay.Elements.Add("PORT", 8600, 0, Flipped=True)
    p2.Parameters("Z").ValueAsString = "30-j*40"
    connect_nodes(s_lay, p1.Nodes(1), m1.Nodes(1))
    connect_nodes(s_lay, m1.Nodes(2), tee.Nodes(1))
    connect_nodes(s_lay, tee.Nodes(3), pad1.Nodes(1))
    connect_nodes(s_lay, pad1.Nodes(2), gap_c.Nodes(1))
    connect_nodes(s_lay, gap_c.Nodes(2), pad2.Nodes(1))
    connect_nodes(s_lay, pad1.Nodes(2), cp.Nodes(1))
    connect_nodes(s_lay, cp.Nodes(2), pad2.Nodes(1))
    connect_nodes(s_lay, pad2.Nodes(2), via.Nodes(1))
    connect_nodes(s_lay, tee.Nodes(2), m2.Nodes(1))
    connect_nodes(s_lay, m2.Nodes(2), gap_l.Nodes(1))
    connect_nodes(s_lay, gap_l.Nodes(2), m3.Nodes(1))
    connect_nodes(s_lay, m2.Nodes(2), ls.Nodes(1))
    connect_nodes(s_lay, ls.Nodes(2), m3.Nodes(1))
    connect_nodes(s_lay, m3.Nodes(2), p2.Nodes(1))

    # Graphs
    g_s = proj.Graphs.Add("S11_S21_LC", mwoffice.mwGraphType.mwGT_Rectangular)
    g_s.Measurements.Add("LC_Ideal", "DB(|S(1,1)|)")
    g_s.Measurements.Add("LC_Ideal", "DB(|S(2,1)|)")

    g_smith = proj.Graphs.Add("Smith_LC", mwoffice.mwGraphType.mwGT_SmithChart)
    g_smith.Measurements.Add("LC_Ideal", "S(1,1)")

    g_swp_l = proj.Graphs.Add("Sweep_L", mwoffice.mwGraphType.mwGT_Rectangular)
    g_swp_l.Measurements.Add("LC_Sweep_L", "DB(|S(1,1)|)")

    g_swp_c = proj.Graphs.Add("Sweep_C", mwoffice.mwGraphType.mwGT_Rectangular)
    g_swp_c.Measurements.Add("LC_Sweep_C", "DB(|S(1,1)|)")

    proj.Simulator.Analyze()
    print("=== AWR_LC Simulation Results ===")
    print_summary(g_s, 1, "LC_Ideal S11")

    proj.SaveAs(emp_path)
    print(f"Saved: {emp_path}")


if __name__ == "__main__":
    main()
