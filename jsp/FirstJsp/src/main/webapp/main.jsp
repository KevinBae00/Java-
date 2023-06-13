<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-12
  Time: 오후 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="loctime.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="header.jsp" %>
<hr>
main 영역
<br>
<%
    out.println("오늘날짜 : " + today);
    out.println("내일날짜 : " + tomorrow);
%>
<hr>
<%@include file="footer.jsp" %>
</body>
</html>
