"""Mo phong EM 3D (Ansys HFSS, PyAEDT) cho ca 3 phuong phap phoi hop trong Latex/main.tex.

Bai toan: f0 = 3.5 GHz, Z0 = 50 ohm, tai Z_L = 30 - j40 ohm (R = 30 ohm noi tiep C = 1.137 pF).
Nen FR-4: er = 4.4, tan d = 0.02, h = 1.6 mm, dong t = 0.035 mm.

Cac design (moi cai la mot design trong CUNG mot project .aedt):
    lc      : Mang LC  - Cp = 0.743 pF song song (phia nguon) + Ls = 2.933 nH noi tiep (phia tai)
              (phan tu tap trung = Lumped RLC tren duong vi dai 50 ohm W = 3.083 mm)
    lc_tuned: Mang LC voi gia tri linh kien da bu ky sinh (via cua Cp, day quanh Ls) de day ve 3.5 GHz
    stub1   : Single-Stub ho mach, nghiem 1 sau tinh chinh: d = 1.50 mm, l = 15.75 mm, W = 3.034 mm
    stub2   : Single-Stub ho mach, nghiem 2 sau tinh chinh: d = 8.65 mm, l = 6.00 mm,  W = 3.034 mm
    lambda4 : Bien ap lambda/4 + day dem: Wt = 6.947 mm, Lt = 10.52 mm, L50 = 5.865 mm (W = 3.083 mm)
    thru50  : (kiem tra) day 50 ohm tron - S11 phai < -25 dB, neu khong la loi wave port

Cach lam: moi mang phoi hop duoc giai voi cong 1 chuan Z0 = 50 ohm va cong 2 chuan hoa truc tiep
ve tai Z_L = 30 - j40 ohm ("30ohm - 40i ohm", tru thru50 giu 50 ohm). Nho do S(1,1) va S11_Smith
trong HFSS la dap ung phoi hop truc tiep voi tai 30 - j40 ohm; do HFSS chuan hoa S(2,1) theo |Z_L|,
do loi truyen dat G_T duoc quy doi bang G_T = |S(2,1)|^2 * Re(Z_L) / |Z_L|.

Yeu cau : Ansys Electronics Desktop (ban Student cung duoc) + pip install pyaedt matplotlib
Chay    : python HFSS/hfss_matching.py                 # tat ca: lc, lc_tuned, stub1, stub2, lambda4
          python HFSS/hfss_matching.py lc stub2        # chi mot so mang
          python HFSS/hfss_matching.py --headless --close
          python HFSS/hfss_matching.py --dry           # chi in kich thuoc hinh hoc, khong mo AEDT
Ket qua (trong thu muc HFSS/):
    Matching_EM3D_3p5GHz.aedt         project HFSS, moi mang mot design (Results: S_dB, S11_Smith)
    results/<ten>.s2p                 S-parameter 2 cong (de-embedded, P1=50, P2=30-j40)
    results/<ten>_S11_loaded.csv      f, S11 (dB), Re/Im Gamma_in, G_T (dB) voi P2 = 30-j40 ohm
    results/compare_S11.png           S11 cua cac mang tren cung do thi + Smith chart
    results/summary.txt               bang so sanh HFSS voi AWR
"""
import argparse
import cmath
import math
import os
import shutil
import sys

# ======================================================================= thong so chung (mm)
ER, TAND, H, T_CU = 4.4, 0.02, 1.6, 0.035
THICK_METAL = True                     # True: dong day 0.035 mm (co ton hao dan); False: tam PEC (nhanh)
F0, F_START, F_STOP, N_PTS = 3.5, 2.0, 5.0, 301      # GHz
Z0 = 50.0
Z_LOAD = 30.0 - 40.0j                  # tro khang chuan hoa cong P2 (tru thru50)
Z2_IMP = "30ohm - 40i "                # PyAEDT noi them "ohm" -> "30ohm - 40i ohm"

# Hop khong khi / cong. Bien buc xa nen cach mach >= lambda0/4 (~21 mm) - dung 15 mm la du cho
# vi dai (it buc xa) va giu luoi nho (ban Student). Tang len neu muon chinh xac hon.
MARGIN_Y = 15.0                        # le hai ben theo y
AIR_H = 15.0                           # chieu cao khong khi tren nen
PORT_W, PORT_H = 18.0, 12.0            # kich thuoc wave port (~ W + 10h, ~ 7.5h)
EXT = 5.0                              # day 50 ohm noi them de dat cong, sau do de-embed bo di

# ======================================================================= thong so tung mang
W50 = 3.083                            # day 50 ohm (FR-4 4.4 / 1.6 mm), Bang thong so lambda/4

# LC (Chuong 2.2) - PyAEDT tu them don vi "H"/"F" nen truyen tien to "n"/"p"
LC_L, LC_C = "2.933n", "0.743p"
# Gia tri bu ky sinh (rut tu lc.s2p cua lan chay voi gia tri ly thuyet, tai 3.5 GHz):
#   - tam Cp dung xuyen 1.6 mm FR-4 ~ via, L_via ~ 0.78 nH -> Cp hieu dung 1.03 pF thay vi 0.743 pF
#     => Cp' = 0.743 / (1 + w^2 * 0.78n * 0.743p) = 0.581 pF
#   - ~2 mm day vi dai quanh Ls cong them ~0.82 nH noi tiep => Ls' = 2.933 - 0.82 = 2.115 nH
LC_TUNED_L, LC_TUNED_C = "2.115n", "0.581p"
LC_PAD = 1.0                         # be rong tam Cp (theo y) ~ linh kien 0402
LC_SEP = 0.5                           # khoang cach tam Cp -> mep khe Ls
LC_GAP = 1.0                           # khe dat Ls (~ chieu dai 0402)

# Single-Stub sau tinh chinh (Bang tab:stubtune)
W_STUB = 3.034
STUB = {"stub1": (1.50, 15.75), "stub2": (8.65, 6.00)}   # (d, l) mm

# lambda/4 sau hieu chinh (Bang tab:tune)
L4_WT, L4_LT, L4_L50 = 6.947, 10.52, 5.865

# Ket qua AWR de doi chieu (Chuong 3)
AWR = {
    "lc":      "AWR (LC ly tuong): S11(3.5) = -72.55 dB, BW -10 dB 2.121-4.444 GHz (2323 MHz)",
    "lc_tuned": "AWR (LC ly tuong): S11(3.5) = -72.55 dB, BW -10 dB 2.121-4.444 GHz (2323 MHz); "
                f"HFSS dung Ls = {LC_TUNED_L}H, Cp = {LC_TUNED_C}F (bu ky sinh)",
    "stub1":   "AWR: S11(3.5) = -15.33 dB, day 3.52 GHz, BW 3.284-4.022 GHz (738 MHz), S21 = -0.321 dB",
    "stub2":   "AWR: S11(3.5) = -32.81 dB, day 3.50 GHz, BW 3.086-3.866 GHz (780 MHz), S21 = -0.211 dB",
    "lambda4": "AWR vi dai: S11(3.5) = -39.64 dB, BW 2.881-4.123 GHz (1242 MHz); "
               "AXIEM: -37.31 dB, day 3.49 GHz, BW 1277 MHz",
    "thru50":  "Kiem tra: ky vong S11 < -25 dB tren ca dai, S21 ~ 0 dB",
}
ALL = ["lc", "lc_tuned", "stub1", "stub2", "lambda4"]

HERE = os.path.dirname(os.path.abspath(__file__))
PROJECT = os.path.join(HERE, "Matching_EM3D_3p5GHz.aedt")
OUT = os.path.join(HERE, "results")


# ======================================================================= hinh hoc
def geometry(name):
    """Tra ve dict:
    lx            chieu dai mach theo x (cong 1 o x = 0, cong 2 o x = lx)
    ymin, ymax    bien nen theo y
    strips        [(ten, x, y, dx, dy)] cac dai dong (mat tren nen, z = H)
    unite         cac strip lien nhau can gop
    deembed       (d1, d2) khoang de-embed cua cong 1, cong 2 (mm)
    lumped        [(ten, kieu, ...)] phan tu tap trung (chi LC)
    """
    if name == "thru50":
        lx = 20.0
        return dict(lx=lx, ymin=-MARGIN_Y, ymax=MARGIN_Y, deembed=(0.0, 0.0), lumped=[],
                    strips=[("Line", 0.0, -W50 / 2, lx, W50)], unite=[])

    if name == "lambda4":
        x1, x2 = EXT, EXT + L4_LT
        lx = x2 + L4_L50 + EXT
        return dict(lx=lx, ymin=-MARGIN_Y, ymax=MARGIN_Y, deembed=(EXT, EXT), lumped=[],
                    strips=[("Line_in", 0.0, -W50 / 2, x1, W50),
                            ("Trans_Lt", x1, -L4_WT / 2, L4_LT, L4_WT),
                            ("Buffer_L50", x2, -W50 / 2, L4_L50 + EXT, W50)],
                    unite=["Line_in", "Trans_Lt", "Buffer_L50"])

    if name in STUB:
        d, l = STUB[name]
        w = W_STUB
        lx = EXT + w + d + EXT          # cong 1 | nut chu T (w x w) | doan d | tai (cong 2)
        return dict(lx=lx, ymin=-MARGIN_Y, ymax=w / 2 + l + MARGIN_Y,
                    deembed=(EXT, EXT), lumped=[],
                    strips=[("Main", 0.0, -w / 2, lx, w),
                            ("Stub_open", EXT, w / 2, w, l)],        # stub ho mach huong +y
                    unite=["Main", "Stub_open"])

    if name in ("lc", "lc_tuned"):
        lval, cval = (LC_L, LC_C) if name == "lc" else (LC_TUNED_L, LC_TUNED_C)
        xc = EXT                        # tam Cp (mat phang tham chieu cong 1)
        xg = xc + LC_PAD / 2 + LC_SEP    # bat dau khe Ls
        lx = xg + LC_GAP + EXT           # mat phang cong 2 = mep phai khe Ls
        zs = H + (T_CU / 2 if THICK_METAL else 0.0)
        return dict(lx=lx, ymin=-MARGIN_Y, ymax=MARGIN_Y,
                    deembed=(xc, EXT), unite=[],
                    strips=[("Line_A", 0.0, -W50 / 2, xg, W50),
                            ("Line_B", xg + LC_GAP, -W50 / 2, EXT, W50)],
                    # Ls: tam XY lap khe giua 2 dai dong, dong chay theo +x
                    # Cp: tam YZ dung trong nen, duoi dai dong, tu mat dat (z=0) len day (z=H)
                    lumped=[("Ls", "XY", [xg, -W50 / 2, zs], [LC_GAP, W50],
                             [[xg, 0, zs], [xg + LC_GAP, 0, zs]], dict(inductance=lval)),
                            ("Cp", "YZ", [xc, -LC_PAD / 2, 0], [LC_PAD, H],
                             [[xc, 0, 0], [xc, 0, H]], dict(capacitance=cval))])
    raise ValueError(name)


# ======================================================================= dung mo hinh HFSS
def build(hfss, name):
    g = geometry(name)
    lx, ymin, ymax = g["lx"], g["ymin"], g["ymax"]
    m = hfss.modeler
    m.model_units = "mm"

    if not hfss.materials.exists_material("FR4_epoxy_44"):
        mat = hfss.materials.add_material("FR4_epoxy_44")
        mat.permittivity = ER
        mat.dielectric_loss_tangent = TAND

    m.create_box([0, ymin, 0], [lx, ymax - ymin, H], name="Substrate", material="FR4_epoxy_44")
    m.create_box([0, ymin, 0], [lx, ymax - ymin, H + AIR_H], name="Air", material="vacuum")

    # --- dai dong
    for sname, x, y, dx, dy in g["strips"]:
        if THICK_METAL:
            m.create_box([x, y, H], [dx, dy, T_CU], name=sname, material="copper")
        else:
            m.create_rectangle("XY", [x, y, H], [dx, dy], name=sname)
    if len(g["unite"]) > 1:
        m.unite(g["unite"])
    if not THICK_METAL:
        hfss.assign_perfecte_to_sheets([s[0] for s in g["strips"] if s[0] in m.object_names],
                                       name="PEC_strips")

    # --- mat dat
    m.create_rectangle("XY", [0, ymin, 0], [lx, ymax - ymin], name="Ground")
    hfss.assign_perfecte_to_sheets("Ground", name="PEC_ground")

    # --- phan tu tap trung (LC)
    for lname, plane, origin, sizes, line, val in g["lumped"]:
        sh = m.create_rectangle(plane, origin, sizes, name=f"{lname}_sheet")
        hfss.assign_lumped_rlc_to_sheet(sh.name, line, name=lname, rlc_type="Parallel", **val)

    # --- bien buc xa: mat tren va hai mat ben (y); mat day = PEC (dat), hai mat x chua cong
    air = m["Air"]
    rad = [f.id for f in air.faces
           if f.center[2] > 1e-6 and abs(f.center[0]) > 1e-6 and abs(f.center[0] - lx) > 1e-6]
    hfss.assign_radiation_boundary_to_faces(rad, name="Rad")

    # --- 2 wave port (P1 = 50 ohm, P2 = 30 - j40 ohm tru thru50), de-embed ve mat phang mang phoi hop
    for i, (x, d) in enumerate(((0.0, g["deembed"][0]), (lx, g["deembed"][1])), start=1):
        sh = m.create_rectangle("YZ", [x, -PORT_W / 2, 0], [PORT_W, PORT_H], name=f"P{i}_sheet")
        imp = Z0 if (i == 1 or name == "thru50") else Z2_IMP
        hfss.wave_port(sh.name, integration_line=[[x, 0, 0], [x, 0, H]], impedance=imp,
                       name=f"P{i}", renormalize=True, deembed=d)

    # --- setup + sweep
    setup = hfss.create_setup("Setup1")
    setup.props["Frequency"] = f"{F0}GHz"
    setup.props["MaximumPasses"] = 15
    setup.props["MaxDeltaS"] = 0.01
    setup.props["MinimumConvergedPasses"] = 2
    setup.update()
    hfss.create_linear_count_sweep(setup="Setup1", unit="GHz", start_frequency=F_START,
                                   stop_frequency=F_STOP, num_of_freq_points=N_PTS,
                                   name="Sweep1", sweep_type="Interpolating", save_fields=False)
    hfss.save_project()


def solve_and_export(hfss, name):
    hfss.validate_full_design()
    if not hfss.analyze_setup("Setup1"):
        raise RuntimeError("HFSS giai that bai - xem Message Manager trong AEDT.")
    ssn = "Setup1 : Sweep1"
    hfss.post.create_report(["dB(S(1,1))", "dB(S(2,1))", "dB(S(2,2))"], setup_sweep_name=ssn,
                            primary_sweep_variable="Freq", plot_name=f"S_dB_{name}", show=False)
    hfss.post.create_report("S(1,1)", setup_sweep_name=ssn, primary_sweep_variable="Freq",
                            plot_type="Smith Chart", plot_name=f"S11_Smith_{name}", show=False)

    os.makedirs(OUT, exist_ok=True)
    hfss.post.export_report_to_jpg(os.path.join(OUT, f"S_dB_{name}.jpg"), f"S_dB_{name}", width=1000, height=620)
    hfss.post.export_report_to_jpg(os.path.join(OUT, f"S11_Smith_{name}.jpg"), f"S11_Smith_{name}", width=760, height=700)
    hfss.export_touchstone(setup="Setup1", sweep="Sweep1", output_file=os.path.join(OUT, f"{name}.s2p"))

    exprs = ["S(1,1)", "S(1,2)", "S(2,1)", "S(2,2)"]
    data = hfss.post.get_solution_data(expressions=exprs, setup_sweep_name=ssn,
                                       primary_sweep_variable="Freq")
    s, f = {}, None
    for e in exprs:
        x, re = data.get_expression_data(expression=e, formula="real")
        _, im = data.get_expression_data(expression=e, formula="imag")
        s[e] = [complex(a, b) for a, b in zip(re, im)]
        f = [float(v) for v in x]
    if f and max(f) > 1e3:              # Hz -> GHz
        f = [v / 1e9 for v in f]
    hfss.save_project()
    return f, s


# ======================================================================= tong ket
def db20(x):
    return 20 * math.log10(max(abs(x), 1e-12))


def band(f, s11):
    """Doan lien tuc S11 <= -10 dB chua f0 -> (f_lo, f_hi) hoac None."""
    i0 = min(range(len(f)), key=lambda i: abs(f[i] - F0))
    if s11[i0] > -10:
        return None
    lo = hi = i0
    while lo > 0 and s11[lo - 1] <= -10:
        lo -= 1
    while hi < len(f) - 1 and s11[hi + 1] <= -10:
        hi += 1
    return f[lo], f[hi]


def summarize(name, f, s):
    gin = s["S(1,1)"]
    s11 = [db20(g) for g in gin]
    gt_offset = 10 * math.log10(Z_LOAD.real / abs(Z_LOAD))  # HFSS chuan hoa S21 theo |Z2| thay vi Re(Z2)
    gtdb = [db20(v) + gt_offset for v in s["S(2,1)"]]
    with open(os.path.join(OUT, f"{name}_S11_loaded.csv"), "w", encoding="utf-8") as fh:
        fh.write("f_GHz,S11_dB,Re_Gin,Im_Gin,GT_dB\n")
        for a, b, g, c in zip(f, s11, gin, gtdb):
            fh.write(f"{a:.4f},{b:.4f},{g.real:.6f},{g.imag:.6f},{c:.4f}\n")

    imin = min(range(len(s11)), key=s11.__getitem__)
    i0 = min(range(len(f)), key=lambda i: abs(f[i] - F0))
    lines = [f"[{name}]",
             f"  HFSS: day S11 = {s11[imin]:.2f} dB tai {f[imin]:.3f} GHz; "
             f"S11({f[i0]:.2f} GHz) = {s11[i0]:.2f} dB; G_T({f[i0]:.2f} GHz) = {gtdb[i0]:.3f} dB"]
    b = band(f, s11)
    if b:
        lines.append(f"  HFSS (P2=30-j40): BW(-10 dB) {b[0]:.3f} .. {b[1]:.3f} GHz = "
                     f"{(b[1] - b[0]) * 1000:.0f} MHz ({(b[1] - b[0]) / F0 * 100:.1f} %)")
    else:
        lines.append("  HFSS (P2=30-j40): S11 tai 3.5 GHz chua dat -10 dB")
    lines.append(f"  {AWR[name]}")
    text = "\n".join(lines)
    print(text, flush=True)
    return text, s11, gin


def plot_all(results):
    try:
        import matplotlib
        matplotlib.use("Agg")
        import matplotlib.pyplot as plt
    except ImportError:
        print("Khong co matplotlib - bo qua ve do thi.")
        return
    fig, (ax, sm) = plt.subplots(1, 2, figsize=(13, 5.5))
    for name, (f, s11, gin) in results.items():
        ax.plot(f, s11, label=name)
        sm.plot([g.real for g in gin], [g.imag for g in gin], label=name)
    ax.axhline(-10, color="k", ls="--", lw=0.8)
    ax.axvspan(3.3, 3.7, color="0.9", zorder=0, label="n78")
    ax.set(xlabel="f (GHz)", ylabel="S11 (dB)", title="HFSS: S11 voi tai 30 - j40 ohm", ylim=(-50, 0))
    ax.grid(True, alpha=0.4)
    ax.legend()
    # Smith chart don gian: vong r = 0, 0.5, 1, 2 va x = +-0.5, +-1, +-2
    t = [i * 2 * math.pi / 400 for i in range(401)]
    sm.plot([math.cos(a) for a in t], [math.sin(a) for a in t], "k", lw=0.8)
    for r in (0.5, 1, 2):
        c, rad = r / (1 + r), 1 / (1 + r)
        sm.plot([c + rad * math.cos(a) for a in t], [rad * math.sin(a) for a in t], "0.7", lw=0.5)
    for x in (0.5, 1, 2, -0.5, -1, -2):
        pts = [((complex(0, x) + r) - 1) / ((complex(0, x) + r) + 1) for r in
               [k / 20 for k in range(0, 400)]]
        sm.plot([p.real for p in pts], [p.imag for p in pts], "0.7", lw=0.5)
    sm.plot([-1, 1], [0, 0], "0.7", lw=0.5)
    sm.set(aspect="equal", xlim=(-1.05, 1.05), ylim=(-1.05, 1.05), title="Gamma_in (2-5 GHz)")
    sm.axis("off")
    sm.legend(loc="lower right", fontsize=8)
    fig.tight_layout()
    out = os.path.join(OUT, "compare_S11.png")
    fig.savefig(out, dpi=150)
    print(f"Da luu {out}")


# ======================================================================= main
def dry_run(names):
    for n in names:
        g = geometry(n)
        p2 = f"{Z0:g} ohm" if n == "thru50" else f"{Z2_IMP}ohm"
        print(f"[{n}] lx = {g['lx']:.3f} mm, y = {g['ymin']:.3f}..{g['ymax']:.3f} mm, "
              f"de-embed = {g['deembed']}, P2 = {p2}")
        for s in g["strips"]:
            print(f"    {s[0]:<11} x={s[1]:7.3f} y={s[2]:7.3f} dx={s[3]:7.3f} dy={s[4]:7.3f}")
        for lp in g["lumped"]:
            print(f"    {lp[0]} ({lp[1]}) origin={lp[2]} sizes={lp[3]} {lp[5]}")
    gl = (Z_LOAD - Z0) / (Z_LOAD + Z0)
    print(f"Gamma_L(3.5 GHz) = {abs(gl):.4f} < {math.degrees(cmath.phase(gl)):.1f} deg (ly thuyet 0.5 < -90)")


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("designs", nargs="*", metavar="design",
                    help="lc, lc_tuned, stub1, stub2, lambda4, thru50 (mac dinh: lc lc_tuned stub1 stub2 lambda4)")
    ap.add_argument("--headless", action="store_true", help="chay ngam, khong hien giao dien AEDT")
    ap.add_argument("--close", action="store_true", help="dong AEDT khi xong")
    ap.add_argument("--version", default=None, help="phien ban AEDT, vd 2025.2 (mac dinh: moi nhat)")
    ap.add_argument("--student", action="store_true",
                    help="dung ban Student (tu bat neu chi cai ban Student)")
    ap.add_argument("--dry", action="store_true", help="chi in hinh hoc, khong mo AEDT")
    a = ap.parse_args()
    names = list(dict.fromkeys(a.designs or ALL))
    bad = [n for n in names if n not in ALL + ["thru50"]]
    if bad:
        ap.error(f"design khong hop le: {bad}")

    if a.dry:
        dry_run(names)
        return

    try:
        from ansys.aedt.core import Hfss          # PyAEDT >= 0.9
    except ImportError:
        from pyaedt import Hfss                   # ban cu

    student = a.student or (not any(k.startswith("ANSYSEM_ROOT") for k in os.environ)
                            and any(k.startswith("ANSYSEMSV_ROOT") for k in os.environ))

    # Luon dung lai project tu dau
    for old in (PROJECT, PROJECT + ".lock"):
        if os.path.isfile(old):
            os.remove(old)
    shutil.rmtree(PROJECT[:-5] + ".aedtresults", ignore_errors=True)
    os.makedirs(OUT, exist_ok=True)

    hfss, failed, results, report = None, [], {}, []
    for n in names:
        print(f"\n===== {n} =====", flush=True)
        try:
            if hfss is None:
                hfss = Hfss(project=PROJECT, design=n, solution_type="Modal", version=a.version,
                            non_graphical=a.headless, new_desktop=True, student_version=student)
            else:
                hfss.insert_design(n, solution_type="Modal")
            build(hfss, n)
            f, s = solve_and_export(hfss, n)
            if n == "thru50":                     # kiem tra cong: xem S11/S21 tho, khong noi tai
                s11 = [db20(v) for v in s["S(1,1)"]]
                s21 = [db20(v) for v in s["S(2,1)"]]
                text = (f"[thru50] S11 max = {max(s11):.2f} dB, S21 min = {min(s21):.3f} dB "
                        f"(2-5 GHz)\n  {AWR[n]}")
                print(text, flush=True)
                report.append(text)
                continue
            text, s11, gin = summarize(n, f, s)
            report.append(text)
            results[n] = (f, s11, gin)
        except Exception as exc:                  # noqa: BLE001 - van chay mang tiep theo
            failed.append(n)
            print(f"[{n}] THAT BAI: {exc}", flush=True)

    if results:
        with open(os.path.join(OUT, "summary.txt"), "w", encoding="utf-8") as fh:
            fh.write("\n\n".join(report) + "\n")
        plot_all(results)
    if hfss is not None:
        hfss.save_project()
        print(f"\nProject: {PROJECT}")
        if a.close:
            hfss.release_desktop()
        else:
            hfss.release_desktop(close_projects=False, close_desktop=False)
    if failed:
        print("Mang that bai:", ", ".join(failed))
        sys.exit(1)


if __name__ == "__main__":
    main()
