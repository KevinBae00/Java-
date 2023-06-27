<%@ page import="common.Person" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-26
  Time: AM 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setAttribute("personObj", new Person("홍길동", 33));
%>
<jsp:forward page="ObjectResult.jsp">
    <jsp:param name="firstNum" value="10"/>
    <jsp:param name="secondNum" value="20"/>
</jsp:forward>
</body>
</html>
