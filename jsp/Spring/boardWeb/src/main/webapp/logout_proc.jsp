<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-07-12
  Time: PM 2:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.invalidate();
    response.sendRedirect("login.jsp");
%>
