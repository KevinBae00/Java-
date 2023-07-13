<%@ page import="com.example.jsp06_re.JDBCConnect" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-15
  Time: 오후 4:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>회원 추가 테스트</h2>
<%
    JDBCConnect jdbc = new JDBCConnect();
    String id = "test1";
    String pass = "1111";
    String name = "테스트1회원";

    String sql = "insert into member values(?,?,?,sysdate)";
    PreparedStatement psmt = jdbc.con.prepareStatement(sql);
    psmt.setString(1, id);
    psmt.setString(2, pass);
    psmt.setString(3, name);

    int result = psmt.executeUpdate();
    out.println(result + "행이 입력되었습니다.");

    jdbc.close();
%>
</body>
</html>
