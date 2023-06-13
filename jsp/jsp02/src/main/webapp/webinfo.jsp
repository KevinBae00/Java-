<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-13
  Time: 오전 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String eng = request.getParameter("eng");
    String kor = request.getParameter("kor");

    String[] favo = request.getParameterValues("favo");
    String favoStr = "";

    if (favo != null) {
        for (int i = 0; i < favo.length; i++) {
            favoStr += favo[i] + ", ";
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<ul>
    <li>URL : <%=request.getRequestURL()%>

    </li>
    <li>URI : <%=request.getRequestURI()%>
    </li>
    <li>쿼리스트링 : <%=request.getQueryString()%>
    </li>
    <%--<li>파라미터1 : <%=request.getParameter("eng")%>--%>
    <%--</li>--%>
    <%--<li>파라미터w : <%=request.getParameter("kor")%>--%>
    <%--</li>--%>
    <li>파라미터1 : <%=eng%>
    </li>
    <li>파라미터2 : <%=kor%>
    </li>
    <li>파라미터3 : <%=favoStr%>
    </li>
</ul>
</body>
</html>
