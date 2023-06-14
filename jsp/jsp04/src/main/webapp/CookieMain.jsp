<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-14
  Time: 오후 2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>1. 쿠키(Cookie) 설정</h2>
<%
    Cookie cookie = new Cookie("myCookie", "쿠키맛나요");
    cookie.setPath(request.getContextPath());
//    out.print(request.getContextPath());
    cookie.setMaxAge(10);
    response.addCookie(cookie);
%>
<h2>2. 쿠키 설정 직후 쿠키값 확인하기</h2>
<%
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            String cookieName = c.getName();
            String cookieValue = c.getValue();

            out.print(cookieName);
            out.print("<br>");
            out.print(cookieValue);
            out.print("<br>");
        }
    }
%>
</body>
</html>