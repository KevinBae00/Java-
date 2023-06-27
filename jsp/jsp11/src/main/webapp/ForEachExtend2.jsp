<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.LinkedList" %>
<%@ page import="common.Person" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-26
  Time: PM 3:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    LinkedList<Person> lists = new LinkedList<Person>();
    lists.add(new Person("맹사성", 34));
    lists.add(new Person("장영실", 44));
    lists.add(new Person("신숙주", 54));
%>

<c:set var="lists" value="<%=lists%>"/>

<c:forEach items="${lists}" var="list">
    <p>이름 : ${list.name}, 나이 : ${list.age }</p>
</c:forEach>

<%
    Map<String, Person> maps = new HashMap<String, Person>();
    maps.put("1st", new Person("맹사성", 34));
    maps.put("2st", new Person("장영실", 44));
    maps.put("3st", new Person("신숙주", 54));
%>

<c:set var="maps" value="<%=maps%>"/>

<c:forEach items="${maps}" var="map">
    <p>${map.key}</p>
    <p>이름 : ${map.value.name}, 나이 : ${map.value.age}</p>
</c:forEach>

<c:set var="number" value="100"/>
<c:set var="string" value="JSP"/>

<c:out value="${number}"/>
</body>
</html>
