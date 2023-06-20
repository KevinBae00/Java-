<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-20
  Time: 오전 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>액션 태그로 폼값 한 번에 받기</h2>
<form method="post" action="UseBeanAction.jsp">
    이름 : <input type="text" name="name"/> <br/>
    나이 : <input type="text" name="age"/> <br/>
    <input type="submit" value="폼값 전송"/>
</form>
</body>
</html>
