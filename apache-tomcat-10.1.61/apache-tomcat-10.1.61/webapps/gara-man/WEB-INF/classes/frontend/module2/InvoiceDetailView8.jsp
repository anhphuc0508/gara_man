<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jspf/require-manager.jspf" %>
<%@ page import="backend.entity.*,backend.dao.DetailBill8DAO" %>
<%@ include file="/WEB-INF/jspf/manager-common.jspf" %>
<%
    String ngayBatDau = request.getParameter("ngayBatDau");
    String ngayKetThuc = request.getParameter("ngayKetThuc");
    String loai = request.getParameter("loai");
    String idHangMuc = request.getParameter("idHangMuc");
    String quayLaiUrl = managerUrl("ServicePartStatView8.jsp", "ngayBatDau", ngayBatDau,
            "ngayKetThuc", ngayKetThuc);
    if (idHangMuc != null && idHangMuc.matches("[1-9]\\d*")
            && ngayBatDau != null && ngayKetThuc != null
            && ("dich-vu".equals(loai) || "phu-tung".equals(loai))) {
        quayLaiUrl = managerUrl("InvoiceListView8.jsp", "id", idHangMuc, "loai", loai,
                "ngayBatDau", ngayBatDau, "ngayKetThuc", ngayKetThuc);
    }

    Bill8 hoaDon = null;
    String loi = "";
    try {
        int idHD = Integer.parseInt(request.getParameter("idHD"));
        if (idHD <= 0) throw new NumberFormatException();
        hoaDon = new DetailBill8DAO().getChiTietHoaDon(idHD);
        if (hoaDon == null) {
            response.setStatus(404);
            loi = "Không tìm thấy hóa đơn đã chọn.";
        }
    } catch (NumberFormatException e) {
        response.setStatus(400);
        loi = "Mã định danh hóa đơn không hợp lệ. Vui lòng chọn lại hóa đơn.";
    }
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin chi tiết hóa đơn</title>
    <link rel="stylesheet" href="manager.css?v=20261114-2">
</head>
<body>
<main class="page invoice-detail-page">
    <h1>THÔNG TIN CHI TIẾT HÓA ĐƠN</h1>
    <% if (hoaDon == null) { %>
    <p class="invoice-error" role="alert"><%= managerHtml(loi) %></p>
    <% } else {
        ServiceRequestReceipt8 phieu = hoaDon.getBd().getPhieuYeuCau();
        Customer8 khachHang = phieu.getLichHen().getKhachHang();
        ServiceDetail8[] dsDichVu = phieu.getDsChiTietDichVu();
        SparePartDetail8[] dsPhuTung = phieu.getDsChiTietPhuTung();
    %>
    <div class="invoice-info">
        <p>Mã HĐ: <%= managerHtml(hoaDon.getMaHD()) %></p>
        <p>Khách Hàng: <%= managerHtml(khachHang.getHoTen()) %></p>
        <p>Ngày Lập: <%= managerDate(hoaDon.getNgayLap()) %></p>
    </div>
    <div class="table-wrap">
        <table class="detail-table" aria-label="Chi tiết dịch vụ và phụ tùng của hóa đơn">
            <thead><tr><th scope="col">TT</th><th scope="col">MÃ</th><th scope="col">HẠNG MỤC</th><th scope="col">SỐ LƯỢNG</th><th scope="col">ĐƠN GIÁ</th><th scope="col">THÀNH TIỀN</th></tr></thead>
            <tbody>
                <% int stt = 1;
                for (SparePartDetail8 phuTung : dsPhuTung) { %>
                <tr>
                    <td><%= stt++ %></td>
                    <td><%= managerHtml(phuTung.getPhuTung().getMaPhuTung()) %></td>
                    <td><%= managerHtml(phuTung.getPhuTung().getTen()) %></td>
                    <td><%= phuTung.getSoLuongSuDung() %></td>
                    <td class="amount"><%= managerMoney(phuTung.getDonGiaXuat()) %></td>
                    <td class="amount"><%= managerMoney((long) phuTung.getSoLuongSuDung() * phuTung.getDonGiaXuat()) %></td>
                </tr>
                <% }
                for (ServiceDetail8 dichVu : dsDichVu) { %>
                <tr>
                    <td><%= stt++ %></td>
                    <td><%= managerHtml(dichVu.getDv().getMaDV()) %></td>
                    <td><%= managerHtml(dichVu.getDv().getTenDV()) %></td>
                    <td>1</td>
                    <td class="amount"><%= managerMoney(dichVu.getDv().getDonGia()) %></td>
                    <td class="amount"><%= managerMoney(dichVu.getThanhTien()) %></td>
                </tr>
                <% }
                if (stt == 1) { %>
                <tr><td colspan="6" class="empty">Hóa đơn chưa có dịch vụ hoặc phụ tùng.</td></tr>
                <% } %>
            </tbody>
        </table>
    </div>
    <p class="total">Tổng Tiền: <%= managerMoney(hoaDon.getBd().getTongTien()) %></p>
    <% } %>
    <a class="button back" href="<%= managerHtml(quayLaiUrl) %>">QUAY LẠI</a>
</main>
</body>
</html>
