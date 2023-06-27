<%@ page import="java.util.Date" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-26
  Time: PM 3:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="today" value="<%=new Date()%>"/>

<c:out value="${today}"/>

<br>

<fmt:formatDate value="${today}" type="both" pattern="yyyy-mm-dd hh:mm:ss"/>

<c:out value="${today}"/>
</body>
</html>
