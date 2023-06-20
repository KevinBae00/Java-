<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
page영역 : <%=pageContext.getAttribute("pAttr")%>
<br>
request영역 : <%=request.getAttribute("rAtrr")%>
</body>
</html>