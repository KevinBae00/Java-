import java.sql.*;

public class JdbcConnectEMP {
    public static void main(String[] args) {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null; // select 구문 전용 객체

        String url = "jdbc:oracle:thin:@localhost:1521:xe";
        String sql = "select * from emp";

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, "scott", "tiger");
            System.out.println("연결성공");

            stmt = con.createStatement();
            rs = stmt.executeQuery(sql); // executeQuery() : select, executeUpdate() : insert, update, delete

            while (rs.next()) {
                int empno = rs.getInt("empno");
                String ename = rs.getString("ename");
                String job = rs.getString("job");
                int mgr = rs.getInt("mgr");
                Date hiredate = rs.getDate("hiredate");
                double sal = rs.getDouble("sal");
                String comm = rs.getString("comm");
                int deptno = rs.getInt("deptno");

                System.out.println(empno + " : " + ename + " : " + job + " : " + mgr + " : " + hiredate + " : " + sal + " : " + comm + " : " + deptno);
            }
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
