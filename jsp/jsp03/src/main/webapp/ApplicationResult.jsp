<%@ page import="java.util.Map" %>
<%@ page import="com.example.jsp03.Person" %>
<%@ page import="java.util.Set" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-14
  Time: 오후 1:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>application 영역의 속성 읽기</h2>
<%
    Map<String, Person> maps = (Map<String, Person>) application.getAttribute("maps");
    Set<String> keys = maps.keySet();
    for (String key : keys) {
        Person person = maps.get(key);
        out.print(person.getName());
        out.print(person.getAge());
        out.print("<br>");
    }
%>
</body>
</html>
