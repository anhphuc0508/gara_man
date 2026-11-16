<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jspf/require-customer.jspf" %>
<%@ page import = "backend.dao.Customer8DAO"%>
<%@ page import = "backend.dao.Service8DAO"%>
<%@ page import="backend.entity.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.net.URLEncoder,java.nio.charset.StandardCharsets" %>
<%@ page import="backend.dao.ServiceRequestReceipt8DAO" %>
<%
    Integer idKH = (Integer) session.getAttribute("idKH");
    Customer8DAO dao = new Customer8DAO();
    Customer8 khachHang = dao.getKhachHang(idKH);

    Service8DAO serviceDao = new Service8DAO();
    ArrayList <Service8> arr = serviceDao.getDichVu();

    Appointment8 lichHenDaChon = (Appointment8) session.getAttribute("lichHen");
    String quayLaiUrl = "BookAppointmentView8.jsp";
    if (lichHenDaChon != null) {
        quayLaiUrl += "?ngayHen=" + URLEncoder.encode(lichHenDaChon.getNgayHen(), StandardCharsets.UTF_8)
                + "&amp;gioHen=" + URLEncoder.encode(lichHenDaChon.getGioHen(), StandardCharsets.UTF_8);
    }
%>
<%
String thongBao = "";
if ("POST".equalsIgnoreCase(request.getMethod())) {
    String loaiXe = request.getParameter("loaiXe");
    String bienSoXe = request.getParameter("bienSoXe");
    String moTa = request.getParameter("moTa");
    int idDV = Integer.parseInt(request.getParameter("dichVu"));
    
    Appointment8 lichHen = (Appointment8) session.getAttribute("lichHen");
    ServiceRequestReceipt8 phieu = new ServiceRequestReceipt8();
    phieu.setLichHen(lichHen);
    phieu.setNgayLap(LocalDate.now().toString());
    phieu.setLoaiXe(loaiXe);
    phieu.setBienSoXe(bienSoXe);
    phieu.setMoTa(moTa);
    Service8 dichVuChon = null;
    for (Service8 dichVu : arr) {
        if(dichVu.getId() == idDV){
            dichVuChon = dichVu;
            break;
        }
    }
    ServiceDetail8 chiTiet = new ServiceDetail8();
    chiTiet.setDv(dichVuChon);
    chiTiet.setThanhTien(dichVuChon.getDonGia());
    phieu.setDsChiTietDichVu(new ServiceDetail8[] { chiTiet });

    ServiceRequestReceipt8DAO phieuDAO = new ServiceRequestReceipt8DAO();
    boolean daLuu = phieuDAO.taoPhieuYeuCau(phieu);

    if (daLuu) {
        thongBao = "Đặt lịch thành công!";
    } else {
        thongBao = "Đặt lịch thất bại.";
    }
}
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin khách hàng</title>
    <style>
        * { box-sizing: border-box; }
        body { margin: 0; color: #000; background: #fff; font-family: "Times New Roman", serif; }
        .page {
            width: min(606px, calc(100% - 32px));
            min-height: 630px;
            margin: 38px auto;
            border: 0;
            background: #fff;
        }
        h1 { margin: 62px 16px 0; text-align: center; font-size: 24px; line-height: 29px; }
        .customer-form { margin: 62px 50px 0; }
        .form-row { display: flex; align-items: center; gap: 4px; min-height: 34px; }
        .form-row label { flex-shrink: 0; font-size: 16px; font-weight: bold; }
        .inline-input {
            min-width: 0;
            width: 260px;
            padding: 2px 0;
            border: 0;
            border-bottom: 1px solid transparent;
            border-radius: 0;
            background: transparent;
            color: #000;
            font: 16px "Times New Roman", serif;
        }
        .inline-input:hover { border-bottom-color: #b5b5b5; }
        .inline-input:focus { outline: none; border-bottom-color: #086287; }
        .service-row { gap: 28px; }
        .vehicle-row { gap: 16px; }
        .choice {
            width: 70px;
            max-width: 100%;
            height: 24px;
            padding: 2px 6px;
            appearance: none;
            border: 1px solid #111;
            border-radius: 0;
            background: #5bc8e8;
            color: #000;
            text-align: center;
            font: bold 12px Arial, sans-serif;
            cursor: pointer;
        }
        .choice option { background: #fff; color: #000; font-weight: normal; }
        .choice:focus-visible, button:focus-visible, .back-button:focus-visible { outline: 3px solid #086287; outline-offset: 3px; }
        .actions { display: flex; justify-content: center; flex-wrap: wrap; gap: 16px; margin-top: 86px; }
        .confirm-button, .close-button, .back-button {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            min-width: 88px;
            min-height: 26px;
            padding: 4px 10px;
            border: 1px solid #111;
            background: #5bc8e8;
            color: #000;
            font: bold 12px Arial, sans-serif;
            text-decoration: none;
            cursor: pointer;
        }
        button:hover, .back-button:hover { background: #42bce1; }
        .error { color: #a71a1a; line-height: 1.5; font-size: 15px; }
        .error a { color: #075979; }
        dialog { width: min(460px, calc(100% - 32px)); padding: 28px; border: 1px solid #111; }
        dialog::backdrop { background: rgb(0 0 0 / 30%); }
        dialog h2 { margin: 0 0 20px; text-align: center; font-size: 21px; }
        .summary-row { display: grid; grid-template-columns: 125px minmax(0, 1fr); gap: 8px; margin: 10px 0; }
        .summary-row dt { font-weight: bold; }
        .summary-row dd { margin: 0; overflow-wrap: anywhere; }
        .dialog-actions { margin-top: 24px; text-align: center; }
        @media (max-width: 540px) {
            .page { min-height: calc(100svh - 32px); margin-block: 16px; }
            h1 { margin-top: 44px; font-size: 21px; }
            .customer-form { margin: 48px 20px 0; }
            .form-row { min-height: 40px; }
            .service-row, .vehicle-row { gap: 8px; }
            .choice { min-height: 28px; }
            .actions { margin-top: 64px; }
            .confirm-button, .back-button { min-height: 40px; }
            .summary-row { grid-template-columns: 105px minmax(0, 1fr); }
        }
    </style>
</head>
<body>
    <main class="page">
        <h1>THÔNG TIN KHÁCH HÀNG</h1>
        <form class="customer-form" id="customer-form" method="post">
            <div class="form-row">
                <p> <b>Họ tên:</b> <%= khachHang.getHoTen() %></p>
            </div>
            <div class="form-row">
                <p> <b>SĐT:</b> <%= khachHang.getSDT() %></p>
            </div>
            <div class="form-row service-row">
                <label for="requested-service">Dịch Vụ Yêu Cầu:</label>
                <select class="choice" id="requested-service" name="dichVu" required>
                    <option value="" disabled selected>CHỌN</option>
                    <% for (Service8 dichVu : arr) { %>
                        <option value="<%= dichVu.getId() %>">
                            <%= dichVu.getTenDV() %>
                        </option>
                    <% } %>
                </select>
            </div>
            <div class="form-row">
                <label for="description">Mô Tả:</label>
                <input class="inline-input" id="description" name="moTa" maxlength="300" required>
            </div>
            <div class="form-row vehicle-row">
                <label for="vehicle-type">Loại Xe:</label>
                <select class="choice" id="vehicle-type" name="loaiXe" required>
                    <option value="" disabled selected>CHỌN</option>
                    <option value="Ô tô">Ô tô</option>
                    <option value="Xe máy">Xe máy</option>
                </select>
            </div>
            <div class="form-row">
                <label for="license-plate">Biển Số Xe:</label>
                <input class="inline-input" id="license-plate" name="bienSoXe" 
                       maxlength="20" required>
            </div>
            <div class="actions">
                <a class="back-button" href="<%= quayLaiUrl %>">QUAY LẠI</a>
                <button class="confirm-button" type="submit">XÁC NHẬN</button>
            </div>
            <p class="error" id="booking-error" role="alert" hidden>
                Vui lòng <a id="return-to-booking" href="<%= quayLaiUrl %>">chọn ngày và giờ hẹn trong tương lai</a> trước khi xác nhận.
            </p>
        </form>
        <p role="status"><%= thongBao %></p>
    </main>


    <script>
        const parameters = new URLSearchParams(window.location.search);
        const appointmentDate = parameters.get('ngayHen') || '';
        const appointmentTime = parameters.get('gioHen') || '';
        const serviceInput = document.getElementById('requested-service');
        const vehicleInput = document.getElementById('vehicle-type');

        function fitChoice(input) {
            const selectedText = input.options[input.selectedIndex].text;
            const measure = document.createElement('canvas').getContext('2d');
            measure.font = 'bold 12px Arial';
            input.style.width = Math.ceil(Math.max(70, measure.measureText(selectedText).width + 22)) + 'px';
        }
        [serviceInput, vehicleInput].forEach(input => {
            input.addEventListener('change', () => fitChoice(input));
            fitChoice(input);
        });
        window.addEventListener('pageshow', () => {
            fitChoice(serviceInput);
            fitChoice(vehicleInput);
        });

        
    </script>
</body>
</html>
