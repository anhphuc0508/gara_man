<%@ page session="false" %>
<%
    response.setHeader("Cache-Control", "no-store");
    if (!"POST".equalsIgnoreCase(request.getMethod())) {
        response.sendRedirect(request.getContextPath() + "/frontend/LoginView8.jsp");
        return;
    }
    jakarta.servlet.http.HttpSession phienHienTai = request.getSession(false);
    if (phienHienTai != null && phienHienTai.getAttribute("thanhVien") != null) {
        String token = (String) phienHienTai.getAttribute("csrfToken");
        if (token == null || !token.equals(request.getParameter("csrfToken"))) {
            response.sendError(403);
            return;
        }
        phienHienTai.invalidate();
    }
    response.setStatus(303);
    response.setHeader("Location", request.getContextPath() + "/frontend/LoginView8.jsp?dangXuat=1");
%>
