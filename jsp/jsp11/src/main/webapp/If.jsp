<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-26
  Time: PM 2:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--변수선언--%>
<c:set var="number" value="100"/>
<c:set var="string" value="JSP"/>

<c:if test="${number mod 2 == 0 }" var="result">
    ${number}는 짝수다 <br>
</c:if>

<c:if test="${string eq 'java'}" var="result2">
    문자열은 java입니다.
</c:if>

<c:choose>
    <c:when test="${number mod 2 eq 0}">
        ${number}는 짝수다 <br>
    </c:when>
    <c:otherwise>
        ${number}는 홀다 <br>
    </c:otherwise>
</c:choose>
</body>
</html>
