<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-22
  Time: 오후 4:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    //    pageContext.setAttribute("scopeValue", "페이지 영역");
    request.setAttribute("scopeValue", "리퀘스트 영역");
    session.setAttribute("scopeValue", "세션 영역");
    application.setAttribute("scopeValue", "애플리케이션 영역");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>${pageScope.scopeValue}</p>
<p>${requestScope.scopeValue}</p>
<p>${sessionScope.scopeValue}</p>
<p>${applicationScope.scopeValue}</p>

<p>${scopeValue}</p>

</body>
</html>
