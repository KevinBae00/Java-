<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-13
  Time: 오후 1:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String loginErr = request.getParameter("loginErr");
    if (loginErr != null) {
        out.print("로그인실패");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="./responseLogin.jsp" method="post">
    아이디: <input type="text" name="user_id"><br>
    패스워드: <input type="text" name="user_pwd"><br>
    <input type="submit" value="로그인">
</form>
</body>
</html>