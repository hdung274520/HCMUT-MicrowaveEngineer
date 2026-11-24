"""Build and simulate the AWR Microwave Office Quarter-Wave (lambda/4) project (3.5 GHz).

Creates AWR_lambda4/lambda4_transformer.emp matching Latex/main.tex with Copper Rho = 0.689:
  - Substrate FR-4: Er = 4.4, H = 1.6 mm, T = 0.035 mm, Tand = 0.02,
    Rho = 0.689 (Copper normalized to Gold in AWR MSUB)
  - Load: Z_L = 30 - j40 Ohm at f0 = 3.5 GHz (Z0 = 50 Ohm)
  - Schematics:
      Ideal (TLIN Zt=28.8675 EL=90 + TLIN Z0=50 EL=45)
      Microstrip_Before_Tune (Lt = 11.323 mm)
      Microstrip (after tune: Lt = 10.520 mm, L50 = 5.865 mm, Wt = 6.947 mm, W50 = 3.083 mm)
      Tol_Lt, Tol_L50, Tol_Wt, Tol_Er, Tol_H (Parametric Sweeps)
  - Graphs: S11_S21_Ideal, S11_S21_Before_Tune, S11_S21_After_Tune, Smith_Microstrip,
      Tol_Lt, Tol_L50, Tol_Wt, Tol_Er, Tol_H
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


def add_ideal_network(schem):
    """Ideal quarter-wave transformer + lambda/8 buffer line."""
    p1 = schem.Elements.Add("PORT", 0, 0)
    p1.Parameters("Z").ValueAsString = "50"

    t_tf = schem.Elements.Add("TLIN", 1500, 0)
    t_tf.Parameters("Z0").ValueAsString = "28.8675"
    t_tf.Parameters("EL").ValueAsString = "90"
    t_tf.Parameters("F0").ValueAsString = "3.5"

    t_buf = schem.Elements.Add("TLIN", 3500, 0)
    t_buf.Parameters("Z0").ValueAsString = "50"
    t_buf.Parameters("EL").ValueAsString = "45"
    t_buf.Parameters("F0").ValueAsString = "3.5"

    p2 = schem.Elements.Add("PORT", 5500, 0, Flipped=True)
    p2.Parameters("Z").ValueAsString = "30-j*40"

    connect_nodes(schem, p1.Nodes(1), t_tf.Nodes(1))
    connect_nodes(schem, t_tf.Nodes(2), t_buf.Nodes(1))
    connect_nodes(schem, t_buf.Nodes(2), p2.Nodes(1))


def add_microstrip_network(
    schem,
    lt_val="10.52",
    l50_val="5.865",
    wt_val="6.947",
    w50_val="3.083",
    er_val="4.4",
    h_val="1.6",
    sweep_var=None,
    sweep_expr=None,
):
    """Microstrip lambda/4 transformer with feed line, 2x MSTEP, buffer line, and Copper Rho=0.689."""
    schem.Equations.Add(f"W50 = {w50_val}", 0, 1400)
    schem.Equations.Add(f"L50 = {l50_val}", 0, 1650)
    schem.Equations.Add(f"Wt = {wt_val}", 0, 1900)
    schem.Equations.Add(f"Lt = {lt_val}", 0, 2150)
    schem.Equations.Add(f"Er_s = {er_val}", 2200, 1400)
    schem.Equations.Add(f"H_s = {h_val}", 2200, 1650)

    msub = schem.Elements.Add("MSUB", 0, -2000)
    msub.Parameters("Er").ValueAsString = "Er_s"
    msub.Parameters("H").ValueAsString = "H_s"
    msub.Parameters("T").ValueAsString = "0.035"
    msub.Parameters("Rho").ValueAsString = "0.689"
    msub.Parameters("Tand").ValueAsString = "0.02"
    msub.Parameters("ErNom").ValueAsString = "Er_s"
    msub.Parameters("Name").ValueAsString = "SUB1"

    p1 = schem.Elements.Add("PORT", 0, 0)
    p1.Parameters("Z").ValueAsString = "50"

    feed = schem.Elements.Add("MLIN", 1000, 0)
    feed.Parameters("W").ValueAsString = "W50"
    feed.Parameters("L").ValueAsString = "5.0"
    feed.Parameters("MSUB").ValueAsString = "SUB1"

    step1 = schem.Elements.Add("MSTEP", 2500, 0)
    step1.Parameters("W1").ValueAsString = "W50"
    step1.Parameters("W2").ValueAsString = "Wt"
    step1.Parameters("MSUB").ValueAsString = "SUB1"

    tf = schem.Elements.Add("MLIN", 3800, 0)
    tf.Parameters("W").ValueAsString = "Wt"
    tf.Parameters("L").ValueAsString = "Lt"
    tf.Parameters("MSUB").ValueAsString = "SUB1"

    step2 = schem.Elements.Add("MSTEP", 5300, 0)
    step2.Parameters("W1").ValueAsString = "Wt"
    step2.Parameters("W2").ValueAsString = "W50"
    step2.Parameters("MSUB").ValueAsString = "SUB1"

    buf = schem.Elements.Add("MLIN", 6600, 0)
    buf.Parameters("W").ValueAsString = "W50"
    buf.Parameters("L").ValueAsString = "L50"
    buf.Parameters("MSUB").ValueAsString = "SUB1"

    p2 = schem.Elements.Add("PORT", 8200, 0, Flipped=True)
    p2.Parameters("Z").ValueAsString = "30-j*40"

    connect_nodes(schem, p1.Nodes(1), feed.Nodes(1))
    connect_nodes(schem, feed.Nodes(2), step1.Nodes(1))
    connect_nodes(schem, step1.Nodes(2), tf.Nodes(1))
    connect_nodes(schem, tf.Nodes(2), step2.Nodes(1))
    connect_nodes(schem, step2.Nodes(2), buf.Nodes(1))
    connect_nodes(schem, buf.Nodes(2), p2.Nodes(1))

    if sweep_var and sweep_expr:
        swp = schem.Elements.Add("SWPVAR", 4400, 1500)
        swp.Parameters("VarName").ValueAsString = f'"{sweep_var}"'
        swp.Parameters("Values").ValueAsString = sweep_expr


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
        else "0 MHz"
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
    emp_path = os.path.join(out_dir, "lambda4_transformer.emp")

    awrde = mwoffice.CMWOffice()
    awrde.New("lambda4_transformer")
    proj = awrde.Project
    set_units(proj)

    # Frequency sweep: 2.0 to 5.0 GHz, step 10 MHz (301 points, matching main.tex Section 3.3.4)
    proj.Frequencies.Clear()
    freqs_hz = [round(2.0e9 + i * 10.0e6) for i in range(301)]
    proj.Frequencies.AddMultiple(freqs_hz)

    # 1. Ideal, Microstrip before tune, Microstrip after tune
    s_id = proj.Schematics.Add("Ideal")
    add_ideal_network(s_id)

    s_pre = proj.Schematics.Add("Microstrip_Before_Tune")
    add_microstrip_network(s_pre, lt_val="11.323")

    s_ms = proj.Schematics.Add("Microstrip")
    add_microstrip_network(s_ms, lt_val="10.52")

    # 2. Parametric Sweeps
    sweeps = [
        ("Tol_Lt", "Lt", "stepped(0.9*10.52, 1.1*10.52, 0.05*10.52)"),
        ("Tol_L50", "L50", "stepped(0.9*5.865, 1.1*5.865, 0.05*5.865)"),
        ("Tol_Wt", "Wt", "stepped(0.95*6.947, 1.05*6.947, 0.025*6.947)"),
        ("Tol_Er", "Er_s", "stepped(4.2, 4.6, 0.1)"),
        ("Tol_H", "H_s", "stepped(1.52, 1.68, 0.04)"),
    ]
    for sname, svar, sexpr in sweeps:
        sc = proj.Schematics.Add(sname)
        add_microstrip_network(sc, lt_val="10.52", sweep_var=svar, sweep_expr=sexpr)

    # Graphs
    g_id = proj.Graphs.Add("S11_S21_Ideal", mwoffice.mwGraphType.mwGT_Rectangular)
    g_id.Measurements.Add("Ideal", "DB(|S(1,1)|)")
    g_id.Measurements.Add("Ideal", "DB(|S(2,1)|)")

    g_pre = proj.Graphs.Add("S11_S21_Before_Tune", mwoffice.mwGraphType.mwGT_Rectangular)
    g_pre.Measurements.Add("Microstrip_Before_Tune", "DB(|S(1,1)|)")
    g_pre.Measurements.Add("Microstrip_Before_Tune", "DB(|S(2,1)|)")

    g_ms = proj.Graphs.Add("S11_S21_After_Tune", mwoffice.mwGraphType.mwGT_Rectangular)
    g_ms.Measurements.Add("Microstrip", "DB(|S(1,1)|)")
    g_ms.Measurements.Add("Microstrip", "DB(|S(2,1)|)")

    g_smith = proj.Graphs.Add("Smith_Microstrip", mwoffice.mwGraphType.mwGT_SmithChart)
    g_smith.Measurements.Add("Microstrip", "S(1,1)")

    for sname, _, _ in sweeps:
        g = proj.Graphs.Add(sname, mwoffice.mwGraphType.mwGT_Rectangular)
        g.Measurements.Add(sname, "DB(|S(1,1)|)")

    proj.Simulator.Analyze()
    print("=== AWR_lambda4 Simulation Results (Rho=0.689 Copper) ===")
    print_summary(g_id, "Ideal")
    print_summary(g_pre, "Before_Tune (Lt=11.323)")
    print_summary(g_ms, "After_Tune (Lt=10.52)")

    proj.SaveAs(emp_path)
    print(f"Saved: {emp_path}")


if __name__ == "__main__":
    main()
