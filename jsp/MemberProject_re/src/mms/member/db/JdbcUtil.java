//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package mms.member.db;

import java.sql.*;

public class JdbcUtil {
    static {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (ClassNotFoundException var1) {
            var1.printStackTrace();
        }

    }

    public JdbcUtil() {
    }

    public static Connection getConnection() {
        Connection con = null;

        try {
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "javaDB", "javaDB");
            con.setAutoCommit(false);
        } catch (SQLException var2) {
            var2.printStackTrace();
        }

        return con;
    }

    public static void close(Connection con) {
        try {
            con.close();
        } catch (SQLException var2) {
            var2.printStackTrace();
        }

    }

    public static void close(Statement stmt) {
        try {
            stmt.close();
        } catch (SQLException var2) {
            var2.printStackTrace();
        }

    }

    public static void close(ResultSet rs) {
        try {
            rs.close();
        } catch (SQLException var2) {
            var2.printStackTrace();
        }

    }

    public static void commit(Connection con) {
        try {
            con.commit();
        } catch (Exception var2) {
            var2.printStackTrace();
        }

    }

    public static void rollback(Connection con) {
        try {
            con.rollback();
        } catch (Exception var2) {
            var2.printStackTrace();
        }

    }
}
