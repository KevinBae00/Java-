<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-20
  Time: 오전 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--Person person = new Person();--%>

<%--person.getxxx()--%>
<%--person.setxxx()--%>
<jsp:useBean id="person" class="common.Person" scope="request"></jsp:useBean>

<jsp:setProperty name="person" property="name" value="홍길동"></jsp:setProperty>
<jsp:setProperty name="person" property="age" value="10"></jsp:setProperty>

이름 :
<jsp:getProperty name="person" property="name"/>
나이 :
<jsp:getProperty name="person" property="age"/>
</body>
</html>
