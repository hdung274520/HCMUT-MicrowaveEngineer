# Smith Chart Solver — Kỹ thuật Siêu cao tần

Web app giải và vẽ từng bước các bài tập giản đồ Smith (chương 2: Smith Chart and Impedance Matching), theo đúng cách làm trên lớp: giản đồ Z, quay 180° qua tâm để sang dẫn nạp.

**Mở app:** https://hdung274520.github.io/HCMUT-MicrowaveEngineer/tool/

## Các dạng bài

| Tab | Nội dung |
|---|---|
| Đường truyền | Γ, VSWR, d<sub>max</sub>/d<sub>min</sub>, Z(d), Y(d); đi về phía nguồn hoặc về phía tải |
| Biến đổi λ/4 | Tải thuần trở, hoặc tải phức chèn tại d<sub>max</sub>/d<sub>min</sub> |
| Mạch Γ / ┐ | Phối hợp bằng L, C (hai sơ đồ, mỗi sơ đồ hai nghiệm) |
| Dây chêm đơn | Song song / nối tiếp, ngắn mạch / hở mạch, R<sub>S</sub> riêng, L/C thay thế |
| Dây chêm đôi | Hai dây chêm khác loại, bảng tổng hợp nghiệm |

Mỗi lời giải gồm:
- Đáp số.
- Giản đồ có đánh dấu điểm A, B, C… và các vòng dựng hình.
- Lời giải "Bước 1 — …". Rê chuột hoặc bấm vào một bước để thấy điểm tương ứng sáng lên trên giản đồ.
- Nút In ra bản A4 để nộp.

Thao tác với giản đồ:
- Cuộn chuột, chụm hai ngón hoặc dùng nút +/− để phóng to. Càng phóng to, lưới càng chi tiết như giản đồ in.
- Giản đồ có đủ 4 vòng thang ngoài: góc hệ số truyền, góc hệ số phản xạ, WTL, WTG.

## Chạy và kiểm tra

- Không cần cài đặt: mở `tool/index.html` trong trình duyệt. Công thức hiển thị bằng MathJax nên cần mạng.
- Kiểm tra bộ giải bằng các ví dụ trong slide: `node test/rf.test.js`.
- Mỗi lần `git push` lên nhánh `Tool`, GitHub Pages tự cập nhật link sau khoảng 1 phút.
