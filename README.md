# HCMUT – Kỹ thuật Siêu cao tần (Microwave Engineering)

Kho lưu trữ Bài tập lớn môn **Kỹ thuật Siêu cao tần** — Trường Đại học Bách Khoa TP.HCM (HCMUT) và công cụ giải bài tập Biểu đồ Smith trực tuyến.

- **Đề tài:** So sánh ba phương pháp phối hợp trở kháng cho antenna 5G (băng tần n78, $f_0 = 3{,}5\ \text{GHz}$)
- **GVHD:** TS. Nguyễn Minh Tân
- **Nhóm thực hiện:** Tổ 8 – Nhóm L04

| STT | Họ và tên | MSSV |
| :-: | :--- | :-: |
| 1 | Trịnh Hoàng Dũng | 2310575 |
| 2 | Huỳnh Nguyên Diễm Phôi | 2312639 |
| 3 | Nguyễn Thanh Ca | 2310321 |
| 4 | Nguyễn Huỳnh Hưng | 2311337 |

---

## Thông số bài toán

| Thông số | Giá trị |
| :--- | :--- |
| Tần số trung tâm $f_0$ | $3{,}5\ \text{GHz}$ (khảo sát $2$–$5\ \text{GHz}$, băng n78: $3{,}3$–$3{,}7\ \text{GHz}$) |
| Trở kháng nguồn / đường truyền $Z_0$ | $50\ \Omega$ |
| Trở kháng tải anten $Z_L$ | $30 - j40\ \Omega$ ($R_L = 30\ \Omega$ nối tiếp $C_L = 1{,}137\ \text{pF}$) |
| Nền vi dải (Substrate) | FR-4: $\varepsilon_r = 4{,}4$, $h = 1{,}6\ \text{mm}$, $t = 0{,}035\ \text{mm}$, $\tan\delta = 0{,}02$, $\text{Rho} = 0{,}689$ (đồng chuẩn hóa theo vàng trong AWR) |
| Tiêu chí phối hợp | $S_{11} \le -10\ \text{dB}$ ($\mathrm{VSWR} \le 1{,}92$) |

---

## Cấu trúc thư mục

| Thư mục | Nội dung |
| :--- | :--- |
| [`AWR_LC/`](AWR_LC/) | Project AWR mạng phối hợp LC (L-section) (`LC_Matching.emp`) và script tự động hóa `pyawr` (`build_awr_lc.py`) |
| [`AWR_Single-stub/`](AWR_Single-stub/) | Project AWR mạng dây chêm đơn hở mạch (`Single_Stub.emp`, nghiệm 1 & 2, sweep $l, W$) và script `pyawr` (`build_awr_stub.py`) |
| [`AWR_lambda4/`](AWR_lambda4/) | Project AWR biến áp $\lambda/4$ kết hợp dây đệm (`lambda4_transformer.emp`, layout `Transformer_layout.gds`, sweep & Yield) và script `pyawr` (`build_awr_lambda4.py`) |
| [`HFSS/`](HFSS/) | Mô phỏng điện từ toàn sóng 3D (Ansys HFSS / PyAEDT) cho cả 3 phương pháp (`hfss_matching.py`, `Matching_EM3D_3p5GHz.aedt`, kết quả `.s2p`, `.csv`, `compare_S11.png`, `summary.txt`) |
| [`Latex/`](Latex/) | Mã nguồn báo cáo LaTeX (`main.tex`, `baocao.sty`), thư mục hình ảnh đánh số tuần tự `01_`–`33_` (`hinh/`) và file PDF hoàn chỉnh (`build/main.pdf`) |
| [`tool/`](tool/) | Ứng dụng web giải bài tập Biểu đồ Smith: [Mở Smith Chart Solver](https://hdung274520.github.io/HCMUT-MicrowaveEngineer/tool/) |

---

## Tóm tắt kết quả mô phỏng (AWR & Ansys HFSS)

| Phương pháp | AWR: $S_{11}@3{,}5\ \text{GHz}$ | AWR: $\mathrm{BW}_{-10\ \text{dB}}$ | AWR: $S_{21}@3{,}5\ \text{GHz}$ | HFSS 3D: $S_{11}@3{,}5\ \text{GHz}$ | HFSS 3D: $\mathrm{BW}_{-10\ \text{dB}}$ ($R+C$) | HFSS 3D: $G_T@3{,}5\ \text{GHz}$ |
| :--- | :-: | :-: | :-: | :-: | :-: | :-: |
| **Mạng LC** (lý tưởng / bù ký sinh) | $-72{,}55\ \text{dB}$ | $2323\ \text{MHz}$ ($66{,}4\%$) | $0{,}000\ \text{dB}$ | $-52{,}98\ \text{dB}$ | $1210\ \text{MHz}$ ($34{,}6\%$) | $-0{,}029\ \text{dB}$ |
| **Single-Stub (Nghiệm 1)** | $-15{,}33\ \text{dB}$ | $738\ \text{MHz}$ ($21{,}1\%$) | $-0{,}321\ \text{dB}$ | $-14{,}59\ \text{dB}$ | $700\ \text{MHz}$ ($20{,}0\%$) | $-0{,}444\ \text{dB}$ |
| **Single-Stub (Nghiệm 2)** | $-32{,}81\ \text{dB}$ | $780\ \text{MHz}$ ($22{,}3\%$) | $-0{,}211\ \text{dB}$ | $-28{,}11\ \text{dB}$ | $850\ \text{MHz}$ ($24{,}3\%$) | $-0{,}303\ \text{dB}$ |
| **Biến áp $\lambda/4$ + dây đệm** | $-39{,}81\ \text{dB}$ | $1242\ \text{MHz}$ ($35{,}5\%$) | $-0{,}261\ \text{dB}$ | $-31{,}58\ \text{dB}$ | $1010\ \text{MHz}$ ($28{,}9\%$) | $-0{,}349\ \text{dB}$ |

---

## Hướng dẫn chạy lại

### 1. Tạo & mô phỏng lại các project AWR (`pyawr`)
Yêu cầu cài đặt Cadence AWR Microwave Office (v19) và `pip install pywin32`:
```powershell
python AWR_LC\build_awr_lc.py
python AWR_Single-stub\build_awr_stub.py
python AWR_lambda4\build_awr_lambda4.py
```

### 2. Chạy mô phỏng EM 3D (Ansys HFSS / PyAEDT)
Yêu cầu Ansys Electronics Desktop và `pip install pyaedt matplotlib`:
```powershell
python HFSS\hfss_matching.py
```

### 3. Biên dịch báo cáo LaTeX
Yêu cầu MiKTeX / TeX Live hỗ trợ XeLaTeX (chạy 2 lần để cập nhật mục lục và tham chiếu):
```powershell
cd Latex
xelatex -interaction=nonstopmode -output-directory=build main.tex
xelatex -interaction=nonstopmode -output-directory=build main.tex
```
