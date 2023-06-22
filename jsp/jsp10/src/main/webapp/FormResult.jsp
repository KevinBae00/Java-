<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-22
  Time: 오후 4:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>${param.name}</p>
<p>${param.gender}</p>
<p>${param.grade}</p>
<p>
    ${paramValues.inter[0]}
    ${paramValues.inter[1]}
    ${paramValues.inter[2]}
    ${paramValues.inter[3]}
</p>
</body>
</html>
