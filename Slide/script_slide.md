# Kịch bản Slide LaTeX Beamer (Theme Madrid)

**Đề tài:** So sánh ba phương pháp phối hợp trở kháng cho antenna 5G  
**Môn học:** Kỹ thuật Siêu cao tần – Khoa Điện – Điện tử (Tổ 8 – Nhóm L04)  
**GVHD:** TS. Nguyễn Minh Tân  
**Thành viên:** Trịnh Hoàng Dũng (2310575), Huỳnh Nguyên Diễm Phôi (2312639), Nguyễn Thanh Ca (2310321), Nguyễn Huỳnh Hưng (2311337)  
**Cấu trúc:** Mỗi phương pháp đi trọn mạch **Lý thuyết → Tính toán → Mô phỏng AWR & Dung sai**, sau đó **Kiểm chứng EM 3D (HFSS)** và **Tổng kết** — tổng **17 slide** (~12–15 phút).

---

## Mở đầu & Tổng quan (4 slide)

### Slide 1 — Trang bìa *(bố cục mẫu Madrid)*
- **Tiêu đề:** So sánh ba phương pháp phối hợp trở kháng cho antenna 5G
- **Phụ đề:** Bài tập lớn Kỹ thuật Siêu cao tần – Khoa Điện – Điện tử
- **Tác giả:** Tổ 8 – Nhóm L04 (4 thành viên + MSSV) & GVHD: TS. Nguyễn Minh Tân

### Slide 2 — Nội dung trình bày (Outline)
1. Tổng quan & Đặt vấn đề
2. Phương pháp 1: Mạng LC (Lý thuyết → AWR)
3. Phương pháp 2: Single-Stub (Lý thuyết → AWR)
4. Phương pháp 3: Biến áp λ/4 + dây đệm (Lý thuyết → AWR)
5. Kiểm chứng mô phỏng EM 3D (Ansys HFSS)
6. So sánh tổng hợp & Kết luận

### Slide 3 — Bối cảnh 5G Sub-6 GHz & Đặt vấn đề
- **Băng tần 5G n78** (f₀ = 3,5 GHz, dải 3,3–3,7 GHz): hiệu ứng đường truyền phân bố rõ rệt.
- **Thông số bài toán:** Z₀ = 50 Ω; tải anten Z_L = 30 − j40 Ω (R_L = 30 Ω nối tiếp C_L = 1,137 pF).
- **Trước phối hợp:** Γ_L = −j0,5 (0,5∠−90°), VSWR = 3, S₁₁ = −6,02 dB → phản xạ **25% công suất** (~1,25 dB).
- **Mục tiêu:** Z_in = 50 + j0 Ω, S₁₁ ≤ −10 dB (VSWR ≤ 1,92).

### Slide 4 — Biểu đồ Smith & 4 Tiêu chí đánh giá
- **Trái:** Hình `01_smith_chart.png` + điểm tải chuẩn hóa z_L = 0,6 − j0,8 (y_L = 0,6 + j0,8), mục tiêu đưa về tâm (z = 1 + j0).
- **Phải:** 4 tiêu chí đánh giá trên nền FR-4 (ε_r = 4,4, h = 1,6 mm, tan δ = 0,02):
  1. Băng thông (S₁₁ ≤ −10 dB)
  2. Suy hao chèn (S₂₁)
  3. Độ nhạy sai số chế tạo (Parametric Sweep & Monte Carlo)
  4. Kích thước vật lý

---

## Phần 2: Phương pháp 1 — Mạng LC (3 slide)

### Slide 5 — PP1 (LC): Nguyên lý & Tính toán thiết kế
- **Trái:**
  - Sơ đồ TikZ L-section (vì R_L < Z₀ → cuộn cảm nối tiếp L_s ghép tải, tụ song song C_p ở ngõ vào).
  - X' = √(R_L(Z₀ − R_L)) = 24,495 Ω → **L_s = 2,933 nH**, **C_p = 0,743 pF**.
  - Hệ số phẩm chất thấp **Q = 0,816** (băng thông rộng). Không chọn nghiệm 2 (dùng 2 cuộn cảm).
- **Phải:** Hình `02_smith_LC.png` (quỹ đạo trên Smith V4.1).

### Slide 6 — PP1 (LC): Mô phỏng Schematic & Tham số S (AWR)
- **Hình:** `05_schematic_LC.png` & `06_S11_S21_LC.png`.
- **Kết quả:** f_center = 3,50 GHz; **S₁₁ = −72,55 dB**; **BW = 2323 MHz (66,4%)** (2,121–4,444 GHz); S₂₁ = 0,00 dB (mô hình lý tưởng).

### Slide 7 — PP1 (LC): Khảo sát dung sai (Parametric Sweep)
- **Trái:** Hình `07_sweep_LC.png` (quét L, C riêng lẻ ±5%, ±10%).
- **Phải:**
  - Quét **L (±10%)**: dịch tối đa **350 MHz**, S₁₁@3,5 xấu nhất **−19,42 dB**.
  - Quét **C (±10%)**: dịch tối đa **30 MHz**, S₁₁@3,5 xấu nhất **−27,88 dB**.
  - L nhạy hơn C; mọi kịch bản vẫn đạt S₁₁ ≤ −10 dB tại 3,5 GHz.

---

## Phần 3: Phương pháp 2 — Single-Stub hở mạch (3 slide)

### Slide 8 — PP2 (Single-Stub): Nguyên lý & Tính toán thiết kế
- **Trái:**
  - Sơ đồ TikZ Single-Stub song song (stub hở mạch, không cần via).
  - Vi dải 50 Ω trên FR-4: W = 3,083 mm, ε_eff = 3,3323, λ_g = 46,922 mm.
  - Giải t² − 4t + 1 = 0 cho 2 bộ nghiệm:

| Nghiệm | d (mm) | l hở (mm) | Tổng d + l |
| :---: | :---: | :---: | :---: |
| 1 | 1,955 (0,0417λ_g) | 17,06 (0,3636λ_g) | 19,0 mm |
| 2 | 9,775 (0,2083λ_g) | 6,40 (0,1364λ_g) | 16,2 mm |

- **Phải:** Hình `03_smith_stub.png`.

### Slide 9 — PP2 (Single-Stub): Mô phỏng AWR & Tinh chỉnh 2 nghiệm
- **Sau tinh chỉnh (FR-4, tan δ = 0,02, W = 3,034 mm):**
  - Nghiệm 1: d = 1,50 mm, l = 15,75 mm (~52,3 mm²) → S₁₁ = −15,33 dB, BW = 738 MHz (21,1%), |S₂₁| = 0,321 dB.
  - **Nghiệm 2:** d = 8,65 mm, l = 6,00 mm (~44,4 mm²) → **S₁₁ = −32,81 dB**, **BW = 780 MHz (22,3%)**, **|S₂₁| = 0,211 dB**.
- **Hình cạnh nhau:** `10_S11_S21_stub1.pdf` & `11_S11_S21_stub2.pdf`.

### Slide 10 — PP2 (Single-Stub): Khảo sát dung sai (Parametric Sweep)
- **Hình cạnh nhau:** `16_Tol_stub1_L.pdf` & `18_Tol_stub2_L.pdf` (quét chiều dài l ±5%, ±10%).
- **Nhận xét:** Chiều dài stub **l nhạy nhất** — Nghiệm 1 lệch −262/+353 MHz (khi +10% đáy rơi ra ngoài dải n78); Nghiệm 2 chỉ lệch **−90/+83 MHz**; chiều rộng W ít ảnh hưởng → **chọn Nghiệm 2**.

---

## Phần 4: Phương pháp 3 — Biến áp λ/4 kết hợp dây đệm (3 slide)

### Slide 11 — PP3 (Biến áp λ/4): Nguyên lý & Tính toán thiết kế
- **Trái:**
  - Sơ đồ TikZ 2 tầng: dây đệm d₀ đưa tải phức về thuần trở R'_in → biến áp λ/4 có Z_t = √(Z₀·R'_in).
  - Chọn nghiệm ngắn V_min: **d₀ = λ_g/8 = 5,865 mm** → R'_in = 16,667 Ω → **Z_t = 28,868 Ω**.
  - Kích thước lý thuyết: dây đệm (W = 3,083 mm, L = 5,865 mm); biến áp (W_t = 6,947 mm, L_t = 11,323 mm).
- **Phải:** Hình `04_smith_trans.png` (DP₁ → TP₂ → TP₃).

### Slide 12 — PP3 (Biến áp λ/4): Mô phỏng AWR, Layout & Hiệu chỉnh
- **Trái:** Layout `22_layout_vidai.pdf` (tổng dài 16,385 mm, diện tích đồng ~91,2 mm²) + bảng đối chiếu:

| Chỉ tiêu | Lý tưởng | Trước tune (L_t = 11,323) | Sau tune (L_t = 10,52) |
| :--- | :---: | :---: | :---: |
| f_min (GHz) | 3,50 | 3,39 (−110 MHz) | **3,50** |
| S₁₁ tại đáy (dB) | −126,6 | −39,96 | **−39,81** |
| BW −10 dB (MHz) | 1232 (35,2%) | 1204 | **1242 (35,5%)** |

- **Phải:** `25_S11S21_truoc_tune.pdf` & `26_S11S21_sau_tune.pdf`.
- Rút ngắn L_t **−7,1%** để bù tán sắc FR-4 & bước nhảy MSTEP; suy hao vi dải S₂₁ = −0,261 dB.

### Slide 13 — PP3 (Biến áp λ/4): Khảo sát dung sai & Monte Carlo Yield
- **Trái:** Độ nhạy 5 tham số: L₅₀ (18–19 MHz/1%), L_t (15 MHz/1%), ε_r (13 MHz/1%), h (3 MHz/1%), W_t (2 MHz/1%). S₁₁@3,5 xấu nhất vẫn **−19,76 dB**.
- **Phải:** Hình `32_Yield.pdf` — Monte Carlo **300 mẫu** (biến thiên đồng thời 5 tham số), tiêu chí S₁₁ < −10 dB trên 3,3–3,7 GHz → **Yield = 100%**.

---

## Phần 5: Kiểm chứng mô phỏng EM 3D — Ansys HFSS (1 slide)

### Slide 14 — Đối chiếu 3 phương pháp bằng mô phỏng EM 3D toàn sóng
- **Hình chính:** `33_EM_HFSS_compare.png` (S₁₁ và quỹ đạo Smith Chart cả 3 phương pháp, 2–5 GHz).
- **Bảng kết quả HFSS tại 3,5 GHz:**

| Cấu trúc (HFSS) | f_min (GHz) | S₁₁@3,5 (dB) | BW tải R+C (MHz) | G_T@3,5 (dB) |
| :--- | :---: | :---: | :---: | :---: |
| LC (chưa bù ký sinh) | 2,96 | −7,90 | Không đạt | −0,831 |
| **LC bù ký sinh** (2,115 nH; 0,581 pF) | **3,50** | **−52,98** | **1210 (34,6%)** | **−0,029** |
| Single-Stub (Nghiệm 2) | 3,51 | −28,11 | 850 (24,3%) | −0,303 |
| Biến áp λ/4 + dây đệm | 3,46 | −31,58 | 1010 (28,9%) | −0,349 |

- **Điểm nhấn:** Khẳng định ảnh hưởng mạnh của ký sinh via/pad lên mạng LC ở dải GHz; sau bù ký sinh, cả 3 phương pháp khớp sát AWR và phủ trọn băng 5G n78.

---

## Phần 6: So sánh tổng hợp & Kết luận (3 slide)

### Slide 15 — Bảng so sánh tổng hợp 3 phương pháp theo 4 tiêu chí

| Tiêu chí | Mạng LC | Single-Stub (Nghiệm 2) | Biến áp λ/4 + dây đệm |
| :--- | :--- | :--- | :--- |
| **Băng thông −10 dB** | **Rộng nhất: 2323 MHz (66,4%)** | Hẹp nhất: 780 MHz (22,3%) | Khá rộng: 1242 MHz (35,5%) |
| **Kích thước / Diện tích** | **Nhỏ nhất** (2 linh kiện rời) | Gọn (14,65 mm; ~44,4 mm²) | Lớn nhất (16,385 mm; ~91,2 mm²) |
| **Suy hao chèn S₂₁** | 0 dB (lý tưởng); −0,029 dB (HFSS) | **−0,211 dB** (thấp nhất vi dải) | −0,261 dB (vi dải FR-4) |
| **Độ nhạy sai số** | Nhạy L (350 MHz @ ±10%), ít nhạy C | Nhạy l (−90/+83 MHz @ ±10%) | Nhạy L₅₀, L_t, ε_r; **Yield 100%** |

### Slide 16 — Kết luận & Khuyến nghị ứng dụng 5G n78
- **Mạng LC:** Băng thông rộng nhất, nhỏ gọn nhất → phù hợp không gian hẹp, nhưng **bắt buộc bù ký sinh PCB** ở dải GHz.
- **Biến áp λ/4 + dây đệm:** Hoàn toàn vi dải, BW 35,5%, Yield 100% → **lựa chọn vi dải tối ưu cho 5G băng n78** (rút ngắn L_t ~7% khi tune).
- **Single-Stub (Nghiệm 2):** Gọn hơn và tổn hao thấp nhất nhóm vi dải (0,211 dB), nhưng BW hẹp hơn và nhạy chiều dài stub.
- **Hướng phát triển:** Chế tạo mạch thực tế trên PCB FR-4 và đo kiểm bằng VNA.

### Slide 17 — Cảm ơn & Hỏi đáp (Q&A)

---

## 3 điểm cần chốt trước khi tạo file LaTeX
1. **Tỷ lệ khung hình:** `16:9` (thoáng cho bảng & 2 đồ thị cạnh nhau) hay `4:3` (đúng ảnh mẫu)?
2. **Độ dài:** 17 slide như trên đã ổn chưa?
3. **Trang trí:** Giữ tối giản đúng ảnh mẫu hay thêm `logo_bk.png` ở trang bìa?
