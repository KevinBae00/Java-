<%@ page import="com.algoda.common.DBConnPool" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-15
  Time: 오후 2:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h2>JDBC 풀 테스트</h2>
<%
    DBConnPool pool = new DBConnPool();
    pool.close();
%>
</body>
</html>
