<%@ page import="java.util.Map" %>
<%@ page import="com.example.jsp03.Person" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-14
  Time: 오후 1:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>application 영역의 공유</h2>
<%
    Map<String, Person> maps = new HashMap<>();
    maps.put("actor1", new Person("홍길동", 20));
    maps.put("actor2", new Person("김길동", 30));
    application.setAttribute("maps", maps);
%>
</body>
</html>
