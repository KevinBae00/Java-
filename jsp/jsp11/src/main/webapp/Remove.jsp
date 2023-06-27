<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-26
  Time: PM 2:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="scopeVar" value="Application Value" scope="application"></c:set>

<p>${applicationScope.scopeVar}</p>

<c:remove var="scopeVar"/>

삭제후 출력하기

<p>${applicationScope.scopeVar}</p>
</body>
</html>
