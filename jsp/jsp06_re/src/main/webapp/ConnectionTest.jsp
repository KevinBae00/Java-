<%@ page import="com.example.jsp06_re.JDBCConnect" %>
<%--
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


<h2>JDBC 테스트 2</h2>
<%
    String driver = application.getInitParameter("OracleDriver");
    String url = application.getInitParameter("OracleURL");
    String id = application.getInitParameter("OracleId");
    String pwd = application.getInitParameter("OraclePwd");

    JDBCConnect jdbc2 = new JDBCConnect(driver, url, id, pwd);
    jdbc2.close();
%>

<h2>JDBC 테스트 3</h2>
<%
    JDBCConnect jdbc3 = new JDBCConnect(application);
    jdbc3.close();
%>


</body>
</html>
