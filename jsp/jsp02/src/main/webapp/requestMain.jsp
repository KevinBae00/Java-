<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-13
  Time: 오전 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="./webinfo.jsp?eng=Hello&kor=안녕">페이지 이동</a>
<form action="webinfo.jsp" method="post">
    <input type="text" name="eng" value="Bye">
    <input type="text" name="kor" value="안녕">
    <br>
    관심사항 :
    <input type="checkbox" name="favo" value="eco">경제
    <input type="checkbox" name="favo" value="pol" checked>정치
    <input type="checkbox" name="favo" value="ent">연예
    <br>
    <input type="submit" value="submit">
</form>
</body>
</html>
