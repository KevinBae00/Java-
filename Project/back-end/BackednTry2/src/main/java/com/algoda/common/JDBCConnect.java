package com.algoda.common;

import javax.servlet.ServletContext;
import java.sql.*;

public class JDBCConnect {
    public Connection con;
    public Statement stmt;
    public PreparedStatement psmt;
    public ResultSet rs;

    public JDBCConnect() {
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            String url = "jdbc:oracle:thin:@ptax15g6ez0tr2te_low?TNS_ADMIN=D://bbj//oracle//wallet//temp_1689158546393";
            String id = "ADMIN";
            String pwd = "JaewonChung73";
            con = DriverManager.getConnection(url, id, pwd);
            
            System.out.println("연결성공");
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /////////////////////////////////////
    public JDBCConnect(String driver, String url, String id, String pwd) {
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, id, pwd);

            System.out.println("연결성공");
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }
    ///////////////////////////////////////

    public JDBCConnect(ServletContext application) {
        String driver = application.getInitParameter("OracleDriver");

        try {
            Class.forName(driver);
            String url = application.getInitParameter("OracleURL");
            String id = application.getInitParameter("OracleId");
            String pwd = application.getInitParameter("OraclePwd");

            con = DriverManager.getConnection(url, id, pwd);
            System.out.println("연결성공");
        } catch (ClassNotFoundException | SQLException e) {
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
