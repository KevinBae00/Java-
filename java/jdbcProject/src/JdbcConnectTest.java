import java.sql.*;

public class JdbcConnectTest {
    public static void main(String[] args) {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null; // select 구문 전용 객체

        String url = "jdbc:oracle:thin:@localhost:1521:xe";
        String sql = "select * from dept";

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, "scott", "tiger");
            System.out.println("연결성공");

            stmt = con.createStatement();
            rs = stmt.executeQuery(sql); // executeQuery() : select, executeUpdate() : insert, update, delete

            while (rs.next()) {
                int deptno = rs.getInt("deptno");
                String dname = rs.getString("dname");
                String loc = rs.getString("loc");

                System.out.println(deptno + " : " + dname + " : " + loc);
            }
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
