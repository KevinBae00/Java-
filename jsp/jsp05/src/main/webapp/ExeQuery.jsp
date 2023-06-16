<%@ page import="com.example.jsp05.JDBCConnect" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Date" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-16
  Time: 오전 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>회원 목록 조회 테스트(executeQuery() 사용)</h2>
<%
    JDBCConnect jdbc = new JDBCConnect();

    String sql = "select * from member";
    Statement stmt = jdbc.con.createStatement();

    ResultSet rs = stmt.executeQuery(sql);

    while (rs.next()) {
        String id = rs.getString("id");
        String pw = rs.getString("pass");
        String name = rs.getString("name");
        Date regidate = rs.getDate("regidate"); // getString()

        out.println(String.format("%s %s %s %s", id, pw, name, regidate) + "<br>");
    }
    jdbc.close();
%>

</body>
</html>
