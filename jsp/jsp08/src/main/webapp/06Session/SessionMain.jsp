<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-19
  Time: 오전 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.setMaxInactiveInterval(1800);

    SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
    long createTime = session.getCreationTime();
    String creattionTimeStr = dateFormat.format(new Date(createTime));

    long lastTime = session.getLastAccessedTime();
    String lastTimestr = dateFormat.format(new Date(lastTime));
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Session 설정 확인</h2>
<ul>
    <li>세션 유지 시간: <%=session.getMaxInactiveInterval()%>
    </li>
    <li>세션 아이디: <%=session.getId()%>
    </li>
    <li>최초 요청 시각: <%=creattionTimeStr%>
    </li>
    <li>마지막 요청 시각: <%=lastTimestr%>
    </li>
</ul>

<div title=""></div>
</body>
</html>
