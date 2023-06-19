package com.example.jsp06_re;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.*;
// target파일 lib에다가 집적 jdbc6.jar을 추가하는 classexception이 발생하지 않는다.
public class DBConnPool {
    public Connection con;
    public Statement stmt;
    public PreparedStatement psmt;
    public ResultSet rs;

    public DBConnPool() {
        try {
            Context initCtx = new InitialContext();
            Context ctx = (Context) initCtx.lookup("java:comp/env");
            DataSource source = (DataSource) ctx.lookup("dbcp_myoracle");

            con = source.getConnection();

            System.out.println("DB 커넥션 풀 연결 성공");
        } catch (NamingException | SQLException e) {
            System.out.println("DB 커넥션 풀 연결 실패");
            throw new RuntimeException(e);
        }
    }

    public void close() {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (psmt != null) psmt.close();
            if (con != null) con.close();

            System.out.println("자원 해제");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
