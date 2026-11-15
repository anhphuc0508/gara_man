<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jspf/require-customer.jspf" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ - Đặt lịch dịch vụ</title>
    <link rel="stylesheet" href="../auth.css?v=20261114-2">
    <style>
        * { box-sizing: border-box; }
        body { margin: 0; background: #fff; color: #000; font-family: Arial, sans-serif; }
        .page {
            width: min(700px, calc(100% - 32px));
            min-height: 600px;
            margin: 22px auto;
            border: 0;
            background: #fff;
        }
        h1 { margin: 36px 16px 0; text-align: center; font-size: 30px; line-height: 36px; }
        .actions { display: flex; justify-content: center; margin-top: 102px; }
        .booking-button {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 140px;
            min-height: 32px;
            border: 1px solid #111;
            background: #5bc8e8;
            color: #000;
            font-size: 22px;
            font-weight: 700;
            text-decoration: none;
        }
        .booking-button:hover { background: #42bce1; }
        .booking-button:focus-visible { outline: 3px solid #086287; outline-offset: 4px; }
        @media (max-width: 480px) {
            .page { min-height: calc(100svh - 32px); margin-block: 16px; }
            h1 { font-size: 27px; }
        }
    </style>
</head>
<body>
    <main class="page">
        <div class="customer-account-bar">
            <%@ include file="/WEB-INF/jspf/account-bar.jspf" %>
        </div>
        <h1>TRANG CHỦ</h1>
        <div class="actions">
            <a class="booking-button" href="BookAppointmentView8.jsp">Đặt Lịch</a>
        </div>
    </main>
</body>
</html>
