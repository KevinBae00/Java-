import java.sql.*;
import java.util.Scanner;

public class JdbcConnectTest {
    static Connection con = null;
    static Statement stmt = null;
    static ResultSet rs = null; // select 구문 전용 객체

    public static void main(String[] args) {
        System.out.println("===========메뉴선택==========");
        System.out.println("1. 사원등록 2. 사원전체 조회 3. 사원 삭제 4. 종료");
        System.out.println("===========메뉴선택==========");

        System.out.print("메뉴를 선택하세요 : ");
        Scanner scanner = new Scanner(System.in);
        int select = scanner.nextInt();
//        scanner.nextLine(); // 한번만 쓰므로 필요없다.

        switch (select) {
            case 1:
                insertEmp();
                break;
            default:
                System.out.println("메뉴를 다시 선택하세요");
        }

        String url = "jdbc:oracle:thin:@localhost:1521:xe";
        String sql1 = "select * from emp01";
        String sql2 = "insert into emp01" + " values(2222,'Kim','SALES',7788,sysdate,1000,null,30)";
        String sql3 = "update emp01" + " set empno = 3333" + " where empno = 1111";
        String sql4 = "delete from emp01 where empno = 2222";

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, "scott", "tiger");
            System.out.println("연결성공");

            stmt = con.createStatement();
//            int result = stmt.executeUpdate(sql2);
//            int result = stmt.executeUpdate(sql3);
            int result = stmt.executeUpdate(sql4);

            if (result <= 0) {
                System.out.println("데이터 처리 실패");
            } else {
                System.out.println("데이터 처리 성공");
            }
            rs = stmt.executeQuery(sql1); // executeQuery() : select, executeUpdate() : insert, update, delete

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

    static void insertEmp() {
        Scanner sc = new Scanner(System.in);
        System.out.println("사번입력 : ");
        int empno = sc.nextInt();
        sc.nextLine();
        System.out.println("사원명입력 : ");
        String ename = sc.nextLine();
        System.out.println("맡은 업무: ");
        String job = sc.nextLine();

    }
}