<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jspf/require-manager.jspf" %>
<%@ page import="java.util.ArrayList,java.time.LocalDate,java.time.format.DateTimeParseException" %>
<%@ page import="backend.entity.ServiceStat8,backend.entity.SparePartStat8" %>
<%@ page import="backend.dao.ServiceStat8DAO,backend.dao.SparePartStat8DAO" %>
<%@ include file="/WEB-INF/jspf/manager-common.jspf" %>
<%
    String ngayBatDau = request.getParameter("ngayBatDau");
    String ngayKetThuc = request.getParameter("ngayKetThuc");
    if (ngayBatDau == null) ngayBatDau = "";
    if (ngayKetThuc == null) ngayKetThuc = "";

    String loi = "";
    boolean daChonNgay = false;
    if (!ngayBatDau.isBlank() || !ngayKetThuc.isBlank()) {
        try {
            if (!ngayBatDau.matches("\\d{4}-\\d{2}-\\d{2}")
                    || !ngayKetThuc.matches("\\d{4}-\\d{2}-\\d{2}")) {
                loi = "Vui lòng chọn đầy đủ ngày bắt đầu và ngày kết thúc hợp lệ.";
            } else if (LocalDate.parse(ngayKetThuc).isBefore(LocalDate.parse(ngayBatDau))) {
                loi = "Ngày kết thúc phải bằng hoặc sau ngày bắt đầu.";
            } else {
                daChonNgay = true;
            }
        } catch (DateTimeParseException e) {
            loi = "Ngày thống kê không hợp lệ. Vui lòng chọn lại.";
        }
    }

    ArrayList<ServiceStat8> dsDichVu = new ArrayList<>();
    ArrayList<SparePartStat8> dsPhuTung = new ArrayList<>();
    if (daChonNgay) {
        dsDichVu = new ServiceStat8DAO().getDichVu(ngayBatDau, ngayKetThuc);
        dsPhuTung = new SparePartStat8DAO().getTKPhuTung(ngayBatDau, ngayKetThuc);
    }
    String quayLaiUrl = managerUrl("StatMenuView8.jsp",
            "ngayBatDau", ngayBatDau, "ngayKetThuc", ngayKetThuc);
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách thống kê dịch vụ/phụ tùng</title>
    <link rel="stylesheet" href="manager.css?v=20261115-1">
</head>
<body>
<main class="page stat-page">
    <h1>DANH SÁCH THỐNG KÊ DỊCH VỤ/PHỤ TÙNG</h1>
    <form class="date-form" action="ServicePartStatView8.jsp" method="get">
        <div class="date-row">
            <label for="start-date">Ngày Bắt Đầu:</label>
            <span class="date-picker">
                <span id="start-display" aria-hidden="true">CHỌN</span>
                <input id="start-date" name="ngayBatDau" type="date" value="<%= managerHtml(ngayBatDau) %>" required>
            </span>
        </div>
        <div class="date-row">
            <label for="end-date">Ngày Kết Thúc:</label>
            <span class="date-picker">
                <span id="end-display" aria-hidden="true">CHỌN</span>
                <input id="end-date" name="ngayKetThuc" type="date" value="<%= managerHtml(ngayKetThuc) %>" required>
            </span>
        </div>
        <div class="date-actions">
            <button class="button" type="submit">TIẾP TỤC</button>
        </div>
        <% if (!loi.isEmpty()) { %>
            <p class="notice" role="alert"><%= managerHtml(loi) %></p>
        <% } %>
    </form>

    <div class="table-wrap">
        <table class="stat-table" aria-label="Thống kê doanh thu dịch vụ và phụ tùng">
            <thead>
                <tr><th scope="col">TT</th><th scope="col">MÃ</th><th scope="col">TÊN</th><th scope="col">PHÂN LOẠI</th><th scope="col">DOANH THU</th><th scope="col">THAO TÁC</th></tr>
            </thead>
            <tbody>
                <% int stt = 1;
                for (ServiceStat8 dv : dsDichVu) {
                    String chiTietUrl = managerUrl("InvoiceListView8.jsp", "id", String.valueOf(dv.getId()),
                            "loai", "dich-vu", "ngayBatDau", ngayBatDau, "ngayKetThuc", ngayKetThuc);
                %>
                <tr>
                    <td><%= stt++ %></td>
                    <td><%= managerHtml(dv.getMaDV()) %></td>
                    <td><%= managerHtml(dv.getTenDV()) %></td>
                    <td>Dịch vụ</td>
                    <td class="amount"><%= managerMoney(dv.getTongTien()) %></td>
                    <td><a href="<%= managerHtml(chiTietUrl) %>">Xem chi tiết</a></td>
                </tr>
                <% }
                for (SparePartStat8 pt : dsPhuTung) {
                    String chiTietUrl = managerUrl("InvoiceListView8.jsp", "id", String.valueOf(pt.getId()),
                            "loai", "phu-tung", "ngayBatDau", ngayBatDau, "ngayKetThuc", ngayKetThuc);
                %>
                <tr>
                    <td><%= stt++ %></td>
                    <td><%= managerHtml(pt.getMaPhuTung()) %></td>
                    <td><%= managerHtml(pt.getTen()) %></td>
                    <td>Phụ tùng</td>
                    <td class="amount"><%= managerMoney(pt.getTongTien()) %></td>
                    <td><a href="<%= managerHtml(chiTietUrl) %>">Xem chi tiết</a></td>
                </tr>
                <% }
                if (stt == 1) { %>
                <tr><td colspan="6" class="empty"><%= !daChonNgay
                        ? "Chọn ngày bắt đầu, ngày kết thúc và nhấn Tiếp tục để xem thống kê."
                        : "Không có dữ liệu thống kê phù hợp trong khoảng thời gian này." %></td></tr>
                <% } %>
            </tbody>
        </table>
    </div>
    <a class="button back" href="<%= managerHtml(quayLaiUrl) %>">QUAY LẠI</a>
</main>
<script>
    const start = document.getElementById('start-date');
    const end = document.getElementById('end-date');
    function displayDate(value) {
        return /^\d{4}-\d{2}-\d{2}$/.test(value) ? value.split('-').reverse().join('/') : 'CHỌN';
    }
    function refreshDates() {
        document.getElementById('start-display').textContent = displayDate(start.value);
        document.getElementById('end-display').textContent = displayDate(end.value);
        end.min = start.value;
        end.setCustomValidity(start.value && end.value && end.value < start.value
            ? 'Ngày kết thúc phải bằng hoặc sau ngày bắt đầu.' : '');
    }
    for (const input of [start, end]) {
        input.addEventListener('input', refreshDates);
        input.addEventListener('change', refreshDates);
        input.addEventListener('click', () => {
            if (typeof input.showPicker === 'function') {
                try { input.showPicker(); } catch (error) { }
            }
        });
    }
    window.addEventListener('pageshow', refreshDates);
    refreshDates();
</script>
</body>
</html>
