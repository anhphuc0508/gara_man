<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="backend.dao.Member8DAO,backend.entity.Member8,java.util.UUID,java.sql.SQLException" %>
<%@ include file="/WEB-INF/jspf/auth-common.jspf" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    if (session.getAttribute("thanhVien") != null) {
        String trangChu = "ADMIN".equals(session.getAttribute("vaiTro"))
                ? "/frontend/module2/MainManagerView8.jsp" : "/frontend/module1/index.jsp";
        response.sendRedirect(request.getContextPath() + trangChu);
        return;
    }

    String loginToken = (String) session.getAttribute("loginCsrfToken");
    if (loginToken == null) {
        loginToken = UUID.randomUUID().toString();
        session.setAttribute("loginCsrfToken", loginToken);
    }
    String taiKhoan = "";
    String loi = "";
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        taiKhoan = request.getParameter("taiKhoan");
        String matKhau = request.getParameter("matKhau");
        if (taiKhoan == null) taiKhoan = "";
        taiKhoan = taiKhoan.trim();
        if (!loginToken.equals(request.getParameter("csrfToken"))) {
            loi = "Phiên đăng nhập đã hết hạn. Vui lòng thử lại.";
        } else if (taiKhoan.isEmpty() || matKhau == null || matKhau.isEmpty()) {
            loi = "Vui lòng nhập tên đăng nhập và mật khẩu.";
        } else if (taiKhoan.length() > 255 || matKhau.length() > 255) {
            loi = "Tên đăng nhập hoặc mật khẩu không hợp lệ.";
        } else {
            try {
                Member8 thanhVien = new Member8DAO().dangNhap(taiKhoan, matKhau);
                if (thanhVien == null) {
                    loi = "Tên đăng nhập hoặc mật khẩu không đúng.";
                } else {
                    session.invalidate();
                    jakarta.servlet.http.HttpSession phienMoi = request.getSession(true);
                    phienMoi.setMaxInactiveInterval(30 * 60);
                    phienMoi.setAttribute("thanhVien", thanhVien);
                    phienMoi.setAttribute("vaiTro", thanhVien.getVaiTro().name());
                    phienMoi.setAttribute("csrfToken", UUID.randomUUID().toString());
                    String trangChu;
                    if (thanhVien.getVaiTro() == Member8.vaiTro.ADMIN) {
                        phienMoi.setAttribute("idQL", thanhVien.getId());
                        trangChu = "/frontend/module2/MainManagerView8.jsp";
                    } else {
                        phienMoi.setAttribute("idKH", thanhVien.getId());
                        trangChu = "/frontend/module1/index.jsp";
                    }
                    response.setStatus(303);
                    response.setHeader("Location", request.getContextPath() + trangChu);
                    return;
                }
            } catch (SQLException | IllegalStateException e) {
                application.log("Khong dang nhap duoc do loi ket noi hoac truy van database.", e);
                loi = "Chưa thể đăng nhập vào hệ thống. Vui lòng thử lại sau.";
            }
        }
    }
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập - Quản lý gara</title>
    <link rel="stylesheet" href="auth.css?v=20261114-2">
</head>
<body class="login-body">
<main class="login-page">
    <h1>ĐĂNG NHẬP</h1>
    <p class="login-intro">HỆ THỐNG QUẢN LÝ GARA</p>
    <form class="login-form" action="<%= request.getContextPath() %>/frontend/LoginView8.jsp" method="post">
        <input type="hidden" name="csrfToken" value="<%= authHtml(loginToken) %>">
        <div class="login-row">
            <label for="username">Tên đăng nhập:</label>
            <input id="username" name="taiKhoan" type="text" value="<%= authHtml(taiKhoan) %>" autocomplete="username" maxlength="255" required autofocus>
        </div>
        <div class="login-row">
            <label for="password">Mật khẩu:</label>
            <div class="password-field">
                <input id="password" name="matKhau" type="password" autocomplete="current-password" maxlength="255" required>
                <button class="password-toggle" id="password-toggle" type="button" aria-controls="password" aria-pressed="false">Hiện mật khẩu</button>
            </div>
        </div>
        <% if (!loi.isEmpty()) { %>
        <p class="login-message login-error" role="alert"><%= authHtml(loi) %></p>
        <% } else if ("1".equals(request.getParameter("dangXuat"))) { %>
        <p class="login-message" role="status">Đã đăng xuất khỏi hệ thống.</p>
        <% } %>
        <div class="login-actions">
            <button class="login-button" type="submit">ĐĂNG NHẬP</button>
        </div>
    </form>
</main>
<script>
    const password = document.getElementById('password');
    const passwordToggle = document.getElementById('password-toggle');
    passwordToggle.addEventListener('click', () => {
        const visible = password.type === 'password';
        password.type = visible ? 'text' : 'password';
        passwordToggle.textContent = visible ? 'Ẩn mật khẩu' : 'Hiện mật khẩu';
        passwordToggle.setAttribute('aria-pressed', String(visible));
    });
</script>
</body>
</html>
