<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>

<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        String url = "jdbc:oracle:thin:@abr4ytrp9lp1m0sp_low?TNS_ADMIN=D://bbj//data//Wallet_ABR4YTRP9LP1M0SP";
        String user = "ADMIN";
        String password = "Erdgiopq2288";

        Class.forName("oracle.jdbc.driver.OracleDriver");

        conn = DriverManager.getConnection(url, user, password);
        out.println("연결 성공");

        String sql2 = "insert into member('kkk','1111','김')";
        String sql = "select * from member";

        stmt = conn.createStatement();
        stmt.executeQuery(sql2);

        rs = stmt.executeQuery(sql);

        while (rs.next()) {
            String id = rs.getString("id");
            String pw = rs.getString("pass");
            String name = rs.getString("name");
            Date regidate = rs.getDate("regidate"); // getString()

            out.println(String.format("%s %s %s %s", id, pw, name, regidate) + "<br>");
        }

    } catch (SQLException e) {
        out.println("연결 실패");
        out.print("SQLException : " + e.getMessage());
    } finally {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();

            System.out.println("자원 해제");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

</body>
</html>