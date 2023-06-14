<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-14
  Time: 오전 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>이동 후 page 영역의 속성값 읽기</h2>
<%
    Object pInteger = pageContext.getAttribute("pageInteger");
    Object pString = pageContext.getAttribute("pageString");
    Object pPerson = pageContext.getAttribute("pagePerson");
%>

<ul>
    <li><%=(pInteger == null) ? "값없음" : pInteger%>
    </li>
    <li><%=(pString == null) ? "값없음" : pString%>
    </li>
    <li><%=(pPerson == null) ? "값없음" : pPerson%>
    </li>
</ul>
</body>
</html>
