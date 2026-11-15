Truy cập theo đường dẫn để có thể vào được thư mục hệ thống: `apache-tomcat-10.1.61\apache-tomcat-10.1.61\webapps\gara-man`

Cách chạy project:
Yêu cầu: JDK 21 và MySQL 8.
1. Tải project về máy và giải nén.
2. Khởi động MySQL, chạy file SQL đi kèm để tạo database và dữ liệu.
3. Cấu hình thông tin kết nối MySQL trong file
   `webapps/gara-man/backend/dao/DAO.java`.
4. Biên dịch lại các lớp Java sau khi sửa cấu hình.
5. Chạy file `chay-web.bat` để khởi động hệ thống.
6. Truy cập: http://localhost:8080/gara-man/
