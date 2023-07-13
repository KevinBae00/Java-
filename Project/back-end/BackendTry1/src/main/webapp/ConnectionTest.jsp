<%@ page import="com.algoda.common.DBConnPool" %>
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
