<%@ page import="common.Person" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-26
  Time: AM 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<%
    Person p = (Person) request.getAttribute("personObj");
%>--%>

<p>${personObj.name}</p>
<p>${personObj.age}</p>

<p>${param.firstNum}</p>
<p>${param.secondNum}</p>

<p>${param['firstNum']}</p>
<p>${param['secondNum']}</p>
</body>
</html>
