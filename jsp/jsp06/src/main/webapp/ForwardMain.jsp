<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-20
  Time: 오전 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("pAtrr", "이순신");
    request.setAttribute("rAtrr", "이순신");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:forward page="ForwardSub.jsp"></jsp:forward>
</body>
</html>
