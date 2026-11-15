<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jspf/require-manager.jspf" %>
<%@ page import="java.util.ArrayList,java.time.LocalDate,java.time.format.DateTimeParseException" %>
<%@ page import="backend.entity.Bill8,backend.dao.Bill8DAO" %>
<%@ include file="/WEB-INF/jspf/manager-common.jspf" %>
<%
    String idParam = request.getParameter("id");
    String ngayBatDau = request.getParameter("ngayBatDau");
    String ngayKetThuc = request.getParameter("ngayKetThuc");
    String loai = request.getParameter("loai");
    String danhMuc = request.getParameter("danhMuc");
    if (!"tat-ca".equals(danhMuc) && !"dich-vu".equals(danhMuc) && !"phu-tung".equals(danhMuc)) danhMuc = loai;

    if (idParam == null || ngayBatDau == null || ngayKetThuc == null || loai == null) {
        response.sendRedirect("ServicePartStatView8.jsp");
        return;
    }
    int id;
    try {
        id = Integer.parseInt(idParam);
        LocalDate batDau = LocalDate.parse(ngayBatDau);
        LocalDate ketThuc = LocalDate.parse(ngayKetThuc);
        if (id <= 0 || ketThuc.isBefore(batDau)
                || !("dich-vu".equals(loai) || "phu-tung".equals(loai))) {
            response.sendError(400, "Điều kiện thống kê không hợp lệ.");
            return;
        }
    } catch (IllegalArgumentException | DateTimeParseException e) {
        response.sendError(400, "ID hoặc ngày thống kê không hợp lệ.");
        return;
    }

    ArrayList<Bill8> dsHoaDon = new Bill8DAO().getHoaDon(id, ngayBatDau, ngayKetThuc, loai);
    String quayLaiUrl = managerUrl("ServicePartStatView8.jsp", "ngayBatDau", ngayBatDau,
            "ngayKetThuc", ngayKetThuc, "danhMuc", danhMuc);
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách hóa đơn</title>
    <link rel="stylesheet" href="manager.css?v=20261114-2">
</head>
<body>
<main class="page invoice-list-page">
    <h1>DANH SÁCH HÓA ĐƠN</h1>
    <div class="table-wrap">
        <table class="invoice-table" aria-label="Các hóa đơn có dịch vụ hoặc phụ tùng đã chọn">
            <thead><tr><th scope="col">TT</th><th scope="col">MÃ HĐ</th><th scope="col">NGÀY THANH TOÁN</th><th scope="col">THAO TÁC</th></tr></thead>
            <tbody>
                <% int stt = 1;
                for (Bill8 hoaDon : dsHoaDon) {
                    String chiTietUrl = managerUrl("InvoiceDetailView8.jsp", "idHD", String.valueOf(hoaDon.getId()),
                            "idHangMuc", String.valueOf(id), "loai", loai, "ngayBatDau", ngayBatDau,
                            "ngayKetThuc", ngayKetThuc, "danhMuc", danhMuc);
                %>
                <tr>
                    <td><%= stt++ %></td>
                    <td><%= managerHtml(hoaDon.getMaHD()) %></td>
                    <td><%= managerDate(hoaDon.getNgayThanhToan()) %></td>
                    <td><a href="<%= managerHtml(chiTietUrl) %>">Xem chi tiết</a></td>
                </tr>
                <% }
                if (dsHoaDon.isEmpty()) { %>
                <tr><td colspan="4" class="empty">Không có hóa đơn chứa mục đã chọn trong khoảng thời gian này.</td></tr>
                <% } %>
            </tbody>
        </table>
    </div>
    <a class="button back" href="<%= managerHtml(quayLaiUrl) %>">QUAY LẠI</a>
</main>
</body>
</html>
