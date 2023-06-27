<%@ page import="java.util.Date" %>
<%@ page import="common.Person" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-26
  Time: PM 1:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--변수선언--%>
<c:set var="directVar" value="100"></c:set>
<c:set var="elVar" value="${directVar mod 5 }"></c:set>
<c:set var="expVar" value="<%=new Date()%>"></c:set>

<p>${pageScope.directVar}</p>
<p>${elVar}</p>
<p>${expVar}</p>

<c:set var="personVar" value='<%=new Person("박문수",33)%>' scope="request"></c:set>
<p>${requestScope.personVar.name}</p>
<p>${personVar.age}</p>

<c:set var="personVar2" value='<%=new Person()%>' scope="request"></c:set>
<c:set target="${personVar2}" property="name" value="정약용"/>
<c:set target="${personVar2}" property="age" value="60"/>
<p>${requestScope.personVar2.name}</p>
<p>${personVar2.age}</p>

</body>
</html>
