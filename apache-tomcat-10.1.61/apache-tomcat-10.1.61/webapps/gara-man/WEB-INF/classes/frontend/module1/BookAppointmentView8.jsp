<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jspf/require-customer.jspf" %>
<%@ page import="backend.dao.Appointment8DAO" %>
<%@ page import="backend.entity.Customer8" %>
<%@ page import="backend.entity.Appointment8" %>
<%
    Integer idKH = (Integer) session.getAttribute("idKH");
    Customer8 khachHang = new Customer8();
    khachHang.setId(idKH);
    if("POST".equalsIgnoreCase(request.getMethod())){
        String ngayHen = request.getParameter("ngayHen");
        String gioHen = request.getParameter("gioHen");
        Appointment8DAO dao = new Appointment8DAO();
        boolean conTrong = dao.kiemTraKhungGio(ngayHen , gioHen);
        if (conTrong){
            Appointment8 lichHen = new Appointment8();
            lichHen.setNgayHen(ngayHen);
            lichHen.setGioHen(gioHen);
            lichHen.setKhachHang(khachHang);
            boolean isSave = dao.saveLichHen(lichHen);
            if (isSave){
                session.setAttribute("lichHen", lichHen);
                response.sendRedirect("EnterInformationView8.jsp");
            
            }

        }
        else{
            out.println("<p style='color: red;'>Khung giờ đã có lịch, vui lòng chọn giờ khác.</p>");
    }
}
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đặt lịch</title>
    <style>
        * { box-sizing: border-box; }
        body { margin: 0; color: #000; background: #fff; }
        .page {
            width: min(772px, calc(100% - 32px));
            min-height: 624px;
            margin: 30px auto;
            border: 0;
            background: #fff;
        }
        h1 { margin: 28px 16px 0; text-align: center; font: bold 34px/40px "Times New Roman", serif; }
        .booking-form { width: 488px; max-width: calc(100% - 40px); margin: 74px auto 0; }
        .form-row { display: flex; align-items: center; min-height: 32px; margin-bottom: 18px; }
        .form-row > label { flex: 0 0 140px; font: 14px Arial, sans-serif; }
        .picker {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            width: 140px;
            height: 32px;
            border: 1px solid #111;
            background: #fff;
            font: 14px Arial, sans-serif;
        }
        .picker input {
            position: absolute;
            inset: 0;
            width: 100%;
            height: 100%;
            margin: 0;
            opacity: 0;
            cursor: pointer;
        }
        .picker input::-webkit-calendar-picker-indicator {
            position: absolute;
            inset: 0;
            width: auto;
            height: auto;
            cursor: pointer;
        }
        .picker:focus-within { outline: 3px solid #086287; outline-offset: 3px; }
        .actions { display: flex; justify-content: center; gap: 16px; margin-top: 66px; }
        .continue-button, .back-button {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 140px;
            min-height: 56px;
            padding: 8px;
            border: 1px solid #111;
            background: #5bc8e8;
            color: #000;
            font: 20px Arial, sans-serif;
            text-decoration: none;
            cursor: pointer;
        }
        .continue-button:hover, .back-button:hover { background: #42bce1; }
        .continue-button:focus-visible, .back-button:focus-visible { outline: 3px solid #086287; outline-offset: 4px; }
        @media (max-width: 540px) {
            .page { min-height: calc(100svh - 32px); margin-block: 16px; }
            h1 { font-size: 30px; }
            .booking-form { margin-top: 66px; }
            .form-row > label { flex-basis: 100px; }
            .actions { gap: 12px; }
        }
    </style>
</head>
<body>
    <main class="page">
        <h1>ĐẶT LỊCH</h1>
        <form class="booking-form" id="booking-form" action="BookAppointmentView8.jsp" method="post">
            <div class="form-row">
                <label for="appointment-date">NGÀY HẸN:</label>
                <div class="picker">
                    <span id="date-display" aria-hidden="true">CHỌN</span>
                    <input id="appointment-date" name="ngayHen" type="date" required aria-label="Chọn ngày hẹn">
                </div>
            </div>
            <div class="form-row">
                <label for="appointment-time">GIỜ HẸN:</label>
                <div class="picker">
                    <span id="time-display" aria-hidden="true">CHỌN</span>
                    <input id="appointment-time" name="gioHen" type="time" required aria-label="Chọn giờ hẹn">
                </div>
            </div>
            <div class="actions">
                <a class="back-button" href="MainCustomerView8.jsp">QUAY LẠI</a>
                <button class="continue-button" type="submit">TIẾP TỤC</button>
            </div>
        </form>
    </main>
    <script>
        const dateInput = document.getElementById('appointment-date');
        const timeInput = document.getElementById('appointment-time');
        const twoDigits = value => String(value).padStart(2, '0');
        const today = new Date();
        dateInput.min = today.getFullYear() + '-' + twoDigits(today.getMonth() + 1) + '-' + twoDigits(today.getDate());

        const parameters = new URLSearchParams(window.location.search);
        const previousDate = parameters.get('ngayHen');
        const previousTime = parameters.get('gioHen');
        if (previousDate && /^\d{4}-\d{2}-\d{2}$/.test(previousDate)) dateInput.value = previousDate;
        if (previousTime && /^([01]\d|2[0-3]):[0-5]\d$/.test(previousTime)) timeInput.value = previousTime;

        function refreshSelection() {
            document.getElementById('date-display').textContent = dateInput.value
                ? dateInput.value.split('-').reverse().join('/') : 'CHỌN';
            document.getElementById('time-display').textContent = timeInput.value || 'CHỌN';
            timeInput.setCustomValidity('');
        }

        [dateInput, timeInput].forEach(input => {
            input.addEventListener('input', refreshSelection);
            input.addEventListener('change', refreshSelection);
            input.addEventListener('click', () => {
                if (typeof input.showPicker === 'function') {
                    try { input.showPicker(); } catch (error) { /* Native input remains available. */ }
                }
            });
        });
        window.addEventListener('pageshow', refreshSelection);
        document.getElementById('booking-form').addEventListener('submit', event => {
            const appointment = new Date(dateInput.value + 'T' + timeInput.value);
            if (!Number.isFinite(appointment.getTime()) || appointment <= new Date()) {
                event.preventDefault();
                timeInput.setCustomValidity('Vui lòng chọn ngày và giờ hẹn trong tương lai.');
                timeInput.reportValidity();
            }
        });
        refreshSelection();
    </script>
</body>
</html>
