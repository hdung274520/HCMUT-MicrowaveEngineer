"""
HFSS (EM 3D) cho CA BON mang phoi hop tro khang cua de tai, tao bang PyAEDT:

    lambda4 : bien ap lambda/4 + day dem (Lt = 10.52 mm, L50 = 5.865 mm, Wt = 6.947 mm)
    stub1   : Single-Stub nghiem 1 (d = 1.50 mm, l = 15.75 mm, W = 3.034 mm)
    stub2   : Single-Stub nghiem 2 (d = 8.65 mm, l = 6.00 mm, W = 3.034 mm)
    lc      : mang LC  (Cp = 0.743 pF song song o phia nguon -> via xuong dat,
                        Ls = 2.933 nH noi tiep den tai)          [theo thu muc "Ca"]

Moi mang chi co MOT wave port 50 ohm o dau vao; TAI duoc dat that trong mo hinh
bang phan tu RLC tap trung (R = 30 ohm noi tiep C = 1.137 pF, tuong duong 30 - j40
tai 3.5 GHz - dung tai cua cac so do AWR). Vi vay S11 doc truc tiep trong HFSS,
khong can hau xu ly. Script tao san trong project:
    S11_dB_<ten>    do thi dB(S(1,1)) theo tan so
    S11_Smith_<ten> do thi Smith cua S(1,1)
va in tan so day, S11 tai 3.5 GHz, bang thong -10 dB, so voi ket qua AWR.

Yeu cau:  Ansys HFSS, pip install pyaedt
Chay:     python hfss_matching.py                (mac dinh = all: ca 4 mang)
          python hfss_matching.py lc             (chi 1 mang -> project chi co mang do)
          python hfss_matching.py all --headless --close
Ket qua:  MOT project chung Matching_Networks_3p5GHz.aedt, moi mang la mot design:
          lambda4, stub1, stub2, lc (mo bang HFSS: Results > S11_dB_<ten>, S11_Smith_<ten>),
          cung cac file Matching_Networks_3p5GHz_<ten>_S11.csv
"""
import argparse
import os
import shutil

# ------------------------------------------------------------------ chung (mm)
ER, TAND, H, T_CU = 4.4, 0.02, 1.6, 0.035
THICK_METAL = True                     # True: dong 0.035 mm that; False: tam PEC (nhanh hon)
MARGIN_Y, AIR_H = 12.0, 12.0           # le nen theo y; chieu cao khong khi phia tren
WAVE_W, WAVE_H = 20.0, 12.0            # tam wave port (rong, cao); phai nam trong Region
LOAD_INSET = 0.1                       # tai dat cach mep cuoi day 0.1 mm (nam duoi day)
F0, F_START, F_STOP, N_PTS = 3.5, 2.0, 5.0, 301     # GHz
# Don vi: PyAEDT TU THEM chu don vi (F, H) vao sau chuoi, nen phai truyen tien to ("p", "n")
# chu KHONG truyen so thuan (1.137e-12 se thanh "1.137e-12f" = femto-farad -> sai).
R_LOAD, C_LOAD = 30.0, "1.137p"        # tai: R (ohm) noi tiep C (-> "1.137pF") = 30 - j40 tai 3.5 GHz

# ------------------------------------------------------------ tham so tung mang
W50 = 3.083                            # day 50 ohm tren FR-4 4.4 / 1.6 mm
# lambda/4 (Bang kich thuoc sau hieu chinh)
L4_WT, L4_IN, L4_LT, L4_L50 = 6.947, 5.0, 10.52, 5.865
# stub (Bang kich thuoc stub sau tinh chinh)
W_STUB, STUB_EXT = 3.03411, 5.0        # day keo dai 5 mm de dat cong, de-embed ve mep nut chu T
# LC (so do "1.png" trong thu muc Ca: day vao 2 mm -> chu T (nhanh 1 mm) -> C2 -> via -> dat;
#                                      chu T -> L1 -> R1 -> C1 -> dat)
LC_L, LC_C = "2.933n", "0.743p"        # -> "2.933nH", "0.743pF" (PyAEDT them H / F)
LC_IN, LC_AWR_IN = 5.0, 2.0            # day vao trong HFSS (5 mm); mat phang cong cua AWR cach chu T 2 mm
LC_BR_W, LC_BR_L = 1.0, 1.5            # nhanh song song: rong 1 mm (W3 cua MTEE), dai 1.5 mm
LC_GAP, LC_OUT = 1.0, 3.0              # khe dat Ls (mm), day ngan sau Ls de dat tai

DESIGNS = {
    "lambda4": dict(awr="vi dai AWR: S11(3.5GHz) = -39.64 dB, day 3.50 GHz, BW(-10dB) = 1242 MHz; "
                        "AXIEM: -37.31 dB, day 3.49 GHz, BW = 1277 MHz"),
    "stub1": dict(awr="AWR: S11(3.5GHz) = -15.33 dB, day 3.52 GHz, BW(-10dB) = 738 MHz"),
    "stub2": dict(awr="AWR: S11(3.5GHz) = -32.81 dB, day 3.50 GHz, BW(-10dB) = 780 MHz"),
    "lc": dict(awr="AWR vi dai LC (chua toi uu): S11(3.5GHz) = -24.07 dB, day ~3.41 GHz, "
                   "BW(-10dB) = 1202 MHz (2769..3971 MHz); mach ly tuong: -72.55 dB, BW 2323 MHz"),
    "line50": dict(awr="KIEM TRA: day 50 ohm + tai 50 ohm -> ky vong S11 < -25 dB tren ca dai "
                       "(neu khong: loi o wave port hoac tai RLC, khong phai o mang phoi hop)"),
    "thru50": dict(awr="KIEM TRA: day 50 ohm, 2 wave port, KHONG tai -> ky vong S11 < -25 dB va "
                       "S21 ~ 0 dB (neu S11 van ~ -10 dB thi loi o wave port)"),
}
ALL_NETWORKS = ["lambda4", "stub1", "stub2", "lc"]    # "all" khong gom line50

HERE = os.path.dirname(os.path.abspath(__file__))


PROJECT_NAME = "Matching_Networks_3p5GHz"             # ten project chung (doi tuy thich)


def project_path():
    return os.path.join(HERE, f"{PROJECT_NAME}.aedt")


def paths(name):
    return (project_path(), os.path.join(HERE, f"{PROJECT_NAME}_{name}_S11.csv"))


# ------------------------------------------------------------------ hinh hoc
def geometry(name):
    """-> dict: total (chieu dai x), ytop, deembed (mm), strips [(ten, x, y, lx, ly)],
              unite (nhom strip can gop), elements (phan tu tap trung)."""
    if name == "lambda4":
        x1, x2 = L4_IN, L4_IN + L4_LT
        total = x2 + L4_L50
        return dict(total=total, ytop=MARGIN_Y, deembed=0.0,
                    strips=[("Strip_in", 0.0, -W50 / 2, L4_IN, W50),
                            ("Strip_Lt", x1, -L4_WT / 2, L4_LT, L4_WT),
                            ("Strip_L50", x2, -W50 / 2, L4_L50, W50)],
                    unite=["Strip_in", "Strip_Lt", "Strip_L50"], elements=[], load_w=W50)
    if name == "thru50":                               # KIEM TRA rieng wave port (2 cong, khong tai)
        total = 15.0
        return dict(total=total, ytop=MARGIN_Y, deembed=0.0,
                    strips=[("Strip_main", 0.0, -W50 / 2, total, W50)],
                    unite=["Strip_main"], elements=[], load_w=W50, load=None, nports=2)
    if name == "line50":                               # KIEM TRA cong + tai (khong phai mang phoi hop)
        total = 15.0
        return dict(total=total, ytop=MARGIN_Y, deembed=0.0,
                    strips=[("Strip_main", 0.0, -W50 / 2, total, W50)],
                    unite=["Strip_main"], elements=[], load_w=W50, load=(50.0, None))
    if name in ("stub1", "stub2"):
        d, l = (1.50, 15.75) if name == "stub1" else (8.65, 6.00)
        w = W_STUB
        total = STUB_EXT + w + d                       # day + nut chu T + doan d (tai o cuoi)
        return dict(total=total, ytop=max(MARGIN_Y, w / 2 + l + MARGIN_Y), deembed=STUB_EXT,
                    strips=[("Strip_main", 0.0, -w / 2, total, w),
                            ("Strip_stub", STUB_EXT, w / 2, w, l)],      # stub ho mach phia +y
                    unite=["Strip_main", "Strip_stub"], elements=[], load_w=w)
    # LC
    xt = LC_IN                                         # mep trai nut chu T
    xg = xt + W50                                      # bat dau khe Ls
    total = xg + LC_GAP + LC_OUT
    bx = xt + W50 / 2 - LC_BR_W / 2                    # nhanh song song nam giua nut chu T
    by = -W50 / 2 - LC_BR_L
    return dict(total=total, ytop=MARGIN_Y, deembed=LC_IN - LC_AWR_IN,
                strips=[("Strip_A", 0.0, -W50 / 2, xg, W50),
                        ("Strip_br", bx, by, LC_BR_W, LC_BR_L),
                        ("Strip_B", xg + LC_GAP, -W50 / 2, LC_OUT, W50)],
                unite=["Strip_A", "Strip_br"], elements=["lc"], load_w=W50,
                xg=xg, bx=bx, by=by)


# ------------------------------------------------------------------ dung + giai
def build_design(hfss, name):
    """Dung + giai + tao do thi S11 cho MOT mang, trong design dang active cua project chung."""
    g = geometry(name)
    total, ytop = g["total"], g["ytop"]
    ytot = ytop + MARGIN_Y

    m = hfss.modeler
    m.model_units = "mm"

    if not hfss.materials.exists_material("FR4_match"):     # vat lieu la cua ca project
        fr4 = hfss.materials.add_material("FR4_match")
        fr4.permittivity = ER
        fr4.dielectric_loss_tangent = TAND

    m.create_box([0, -MARGIN_Y, 0], [total, ytot, H], name="Substrate", material="FR4_match")

    # --- cac dai dong -----------------------------------------------------------
    def strip(sname, x, y, lx, ly):
        if THICK_METAL:
            return m.create_box([x, y, H], [lx, ly, T_CU], name=sname, material="copper")
        return m.create_rectangle("XY", [x, y, H], [lx, ly], name=sname)

    for s in g["strips"]:
        strip(*s)
    metal = []                                        # ten cac khoi dong sau khi gop
    united = set(g["unite"])
    if len(united) > 1:
        m.unite(g["unite"])
        metal.append(g["unite"][0])
    else:
        metal += [g["unite"][0]]
    metal += [s[0] for s in g["strips"] if s[0] not in united]
    if not THICK_METAL:
        for i, nm in enumerate(metal):
            hfss.assign_perfecte_to_sheets(nm, f"PEC_strip{i}")

    m.create_rectangle("XY", [0, -MARGIN_Y, 0], [total, ytot], name="Ground")
    hfss.assign_perfecte_to_sheets("Ground", "PEC_ground")

    # --- phan tu tap trung cua mang LC (Ls noi tiep, Cp song song) --------------
    if "lc" in g["elements"]:
        zs = H + (T_CU / 2 if THICK_METAL else 0.0)
        xg = g["xg"]
        ls = m.create_rectangle("XY", [xg, -W50 / 2, zs], [LC_GAP, W50], name="Ls_sheet")
        hfss.assign_lumped_rlc_to_sheet(ls.name, [[xg, 0, zs], [xg + LC_GAP, 0, zs]],
                                        name="Ls", rlc_type="Parallel", inductance=LC_L)
        # Tam Cp nam trong mat phang YZ (giong tai/cong, da duoc HFSS chap nhan): tai x = giua
        # nhanh, trai y tu cuoi nhanh den +0.5 mm vao trong, cao tu mat dat (z=0) len day (z=H).
        xc, yc = g["bx"] + LC_BR_W / 2, g["by"] + 0.05
        cp = m.create_rectangle("YZ", [xc, g["by"], 0], [0.5, H], name="Cp_sheet")
        hfss.assign_lumped_rlc_to_sheet(cp.name, [[xc, yc, 0], [xc, yc, H]],
                                        name="Cp", rlc_type="Parallel", capacitance=LC_C)

    # --- TAI R noi tiep C o cuoi day (tam thang dung tu mat dat len day dong) ---
    xl = total - LOAD_INSET
    lw = g["load_w"]
    ld = g.get("load", (R_LOAD, C_LOAD))
    if ld is not None:                                              # thru50: khong co tai
        r_ld, c_ld = ld
        load = m.create_rectangle("YZ", [xl, -lw / 2, 0], [lw, H], name="Load_sheet")
        hfss.assign_lumped_rlc_to_sheet(load.name, [[xl, 0, 0], [xl, 0, H]], name="Load",
                                        rlc_type="Serial", resistance=r_ld, capacitance=c_ld)

    # --- vung khong khi + buc xa chi tren mat ngoai ----------------------------
    region = m.create_region(pad_value=[0, 0, 0, 0, AIR_H, 0],      # [+X,-X,+Y,-Y,+Z,-Z]
                             pad_type=["Absolute Offset"] * 6, name="AirRegion")
    bb = region.bounding_box                                        # [xmin,ymin,zmin,xmax,ymax,zmax]
    if (abs(bb[0]) > 1e-3 or abs(bb[3] - total) > 1e-3 or abs(bb[1] + MARGIN_Y) > 1e-3
            or abs(bb[4] - ytop) > 1e-3 or abs(bb[2]) > 1e-3 or bb[5] < H + AIR_H - 1e-3):
        raise RuntimeError(f"Region khong dung kich thuoc mong doi: {bb}")
    hfss.assign_radiation_boundary_to_faces([f.id for f in region.faces if f.center[2] > 1e-6])

    # --- MOT wave port 50 ohm o x = 0 (de-embed ve dung mat phang cua so do AWR) -
    sh = m.create_rectangle("YZ", [0, -WAVE_W / 2, 0], [WAVE_W, WAVE_H], name="P1_sheet")
    hfss.wave_port(sh.name, integration_line=[[0, 0, 0], [0, 0, WAVE_H]], impedance=50,
                   name="P1", renormalize=True, deembed=g["deembed"])
    if g.get("nports", 1) == 2:                                     # chi dung cho bai kiem tra thru50
        sh2 = m.create_rectangle("YZ", [total, -WAVE_W / 2, 0], [WAVE_W, WAVE_H], name="P2_sheet")
        hfss.wave_port(sh2.name, integration_line=[[total, 0, 0], [total, 0, WAVE_H]],
                       impedance=50, name="P2", renormalize=True)

    # --- setup + quet tan so ------------------------------------------------------
    setup = hfss.create_setup("Setup1")
    setup.props["Frequency"] = f"{F0}GHz"
    setup.props["MaximumPasses"] = 10
    setup.props["MaxDeltaS"] = 0.02
    setup.update()
    base = dict(setup="Setup1", start_frequency=F_START, stop_frequency=F_STOP,
                num_of_freq_points=N_PTS, sweep_type="Interpolating")
    sweep = None
    for unit_kw in ("unit", "units"):
        for name_kw in ("name", "sweepname"):
            try:
                sweep = hfss.create_linear_count_sweep(**base, **{unit_kw: "GHz", name_kw: "Sweep1"})
                break
            except TypeError:
                continue
        if sweep:
            break
    if not sweep:
        raise RuntimeError("Khong tao duoc sweep (chu ky create_linear_count_sweep khac).")

    hfss.validate_full_design()
    hfss.save_project()
    if not hfss.analyze_setup("Setup1"):
        try:
            for msg in hfss.odesktop.GetMessages(hfss.project_name, hfss.design_name, 2):
                print("HFSS ERROR:", msg)
        except Exception as exc:                                    # noqa: BLE001
            print("Khong doc duoc Message Manager:", exc)
        raise RuntimeError(f"HFSS giai that bai cho '{name}'. AEDT van mo de xem Message Manager.")

    # --- do thi S11 TRONG project HFSS (mo file .aedt la thay, muc Results) -------
    ssn = f"Setup1 : {getattr(sweep, 'name', 'Sweep1')}"
    hfss.post.create_report(expressions="dB(S(1,1))", setup_sweep_name=ssn, domain="Sweep",
                            primary_sweep_variable="Freq", plot_name=f"S11_dB_{name}", show=False)
    hfss.post.create_report(expressions="S(1,1)", setup_sweep_name=ssn, domain="Sweep",
                            primary_sweep_variable="Freq", plot_type="Smith Chart",
                            plot_name=f"S11_Smith_{name}", show=False)
    freqs, s11db = fetch_s11(hfss, ssn)
    hfss.save_project()                                             # luu ca cac report
    summarize(name, freqs, s11db)


# ------------------------------------------------------------------ doc ket qua
def fetch_s11(hfss, ssn):
    data = hfss.post.get_solution_data(expressions="dB(S(1,1))", setup_sweep_name=ssn,
                                       domain="Sweep", primary_sweep_variable="Freq")
    x, y = data.get_expression_data(expression="dB(S(1,1))", formula="real")
    f, v = [float(a) for a in x], [float(b) for b in y]
    if f and max(f) > 1e3:                                          # Hz -> GHz neu can
        f = [x / 1e9 for x in f]
    return f, v


def summarize(name, f, db):
    _, csv = paths(name)
    with open(csv, "w", encoding="utf-8") as fh:
        fh.write("f_GHz,S11_dB\n")
        for a, b in zip(f, db):
            fh.write(f"{a:.4f},{b:.4f}\n")
    imin = min(range(len(db)), key=db.__getitem__)
    i35 = min(range(len(f)), key=lambda i: abs(f[i] - F0))
    below = [a for a, b in zip(f, db) if b <= -10]
    print(f"[{name}] day S11 = {db[imin]:.2f} dB tai {f[imin]:.3f} GHz; "
          f"S11({f[i35]:.2f} GHz) = {db[i35]:.2f} dB")
    if below:
        print(f"[{name}] BW(-10 dB): {min(below):.3f} .. {max(below):.3f} GHz "
              f"({(max(below) - min(below)) * 1000:.0f} MHz)")
    else:
        print(f"[{name}] khong co tan so nao dat S11 <= -10 dB")
    print(f"[{name}] {DESIGNS[name]['awr']}")
    print(f"[{name}] da ghi {csv}")


def main():
    try:
        from ansys.aedt.core import Hfss             # PyAEDT >= 0.9
    except ImportError:
        from pyaedt import Hfss                      # ban cu

    ap = argparse.ArgumentParser()
    ap.add_argument("design", nargs="?", default="all", choices=list(DESIGNS) + ["all"],
                    help="mang can mo phong (mac dinh: all = lambda4, stub1, stub2, lc)")
    ap.add_argument("--headless", action="store_true", help="chay ngam, khong hien giao dien")
    ap.add_argument("--close", action="store_true", help="dong AEDT sau khi xong (mac dinh de mo)")
    a = ap.parse_args()
    names = ALL_NETWORKS if a.design == "all" else [a.design]

    # Project CHUNG: mot file .aedt, moi mang la mot design ben trong. Luon dung lai tu dau
    # (xoa project cu) nen chay mot mang rieng le se tao project chi co mang do.
    proj = project_path()
    for old in (proj, proj + ".lock"):
        if os.path.isfile(old):
            os.remove(old)
    shutil.rmtree(proj[:-5] + ".aedtresults", ignore_errors=True)

    hfss, failed = None, []
    for n in names:
        print(f"===== {n} =====", flush=True)
        try:
            if hfss is None:
                hfss = Hfss(project=proj, design=n, solution_type="Modal",
                            non_graphical=a.headless, new_desktop=True)
            else:
                hfss.insert_design(n, solution_type="Modal")   # design moi trong cung project
            build_design(hfss, n)
        except Exception as exc:                                # noqa: BLE001
            failed.append(n)
            print(f"[{n}] THAT BAI: {exc}", flush=True)         # van tiep tuc mang ke tiep
    if hfss is None:
        return
    hfss.save_project()
    print(f"\nProject chung: {proj}")
    print("Design trong project:", ", ".join(hfss.design_list))
    if failed:
        print("Mang that bai:", ", ".join(failed))
    if a.close:
        hfss.release_desktop()
    else:
        hfss.release_desktop(close_projects=False, close_desktop=False)   # de AEDT mo san


if __name__ == "__main__":
    main()
