<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-14
  Time: 오후 4:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String chkVal = request.getParameter("inactiveToday");
    if (chkVal != null && chkVal.equals("1")) {
        Cookie cookie = new Cookie("PopupClose", "off");
        cookie.setPath(request.getContextPath());
        cookie.setMaxAge(20);
        response.addCookie(cookie);
        out.print("쿠키: 하루동안 안보기");
    }
%>