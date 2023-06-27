<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-26
  Time: PM 2:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach begin="1" end="3" step="1" var="i">
    <p>${i}</p>
</c:forEach>

<table border="1">
    <c:forEach begin="1" end="3" step="1" var="i" varStatus="loop">
        <tr>
            <td>count : ${loop.count}</td>
            <td>index : ${loop.index}</td>
            <td>current : ${loop.current}</td>
            <td>first : ${loop.first}</td>
            <td>last : ${loop.last}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
