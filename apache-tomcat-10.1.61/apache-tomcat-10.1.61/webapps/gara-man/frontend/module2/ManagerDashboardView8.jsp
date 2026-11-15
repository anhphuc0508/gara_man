<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jspf/require-manager.jspf" %>
<%@ include file="/WEB-INF/jspf/manager-common.jspf" %>
<%
    String thongKeUrl = managerUrl("ServicePartStatView8.jsp",
            "ngayBatDau", request.getParameter("ngayBatDau"),
            "ngayKetThuc", request.getParameter("ngayKetThuc"),
            "danhMuc", request.getParameter("danhMuc"));
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý danh mục</title>
    <link rel="stylesheet" href="manager.css?v=20261114-2">
</head>
<body>
<main class="page menu-page">
    <h1>QUẢN LÝ DANH MỤC</h1>
    <div class="menu-action">
        <a class="button" href="<%= managerHtml(thongKeUrl) %>">XEM THỐNG KÊ DV/PT</a>
    </div>
    <a class="button back" href="MainManagerView8.jsp">QUAY LẠI</a>
</main>
</body>
</html>
