import java.sql.*;
import java.util.Scanner;

public class JdbcEMPTest {
    static Connection con = null;
    static Statement stmt = null;
    static ResultSet rs = null; // select 구문 전용 객체

    public static void main(String[] args) {
        String url = "jdbc:oracle:thin:@localhost:1521:xe";

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, "scott", "tiger");
            System.out.println("연결성공");

            stmt = con.createStatement();

        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }

        while (true) {
            System.out.println("===========메뉴선택==========");
            System.out.println("1. 사원등록 2. 사원전체 조회 3. 사원 삭제 4. 종료");
            System.out.println("===========메뉴선택==========");

            System.out.print("메뉴를 선택하세요 : ");
            Scanner scanner = new Scanner(System.in);
            int select = scanner.nextInt();
            scanner.nextLine();

            switch (select) {
                case 1:
                    insertEmp();
                    break;

                case 2:
                    selectAllEmp();
                    break;

                case 3:
                    deleteEmp();
                    break;

                case 4:
                    System.out.println("프로그램 종료");
                    System.exit(0);

                default:
                    System.out.println("메뉴를 다시 선택하세요");
            }
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

        String sql = "insert into emp01 (empno, ename, job)"
                + " values (" + empno + ",'" + ename + "','" + job + "')";

        try {
            int result = stmt.executeUpdate(sql);

            if (result <= 0) {
                System.out.println("데이터 처리 실패");
            } else {
                System.out.println("데이터 처리 성공");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    static void selectAllEmp() {
        String sql = "select * from emp01";

        try {
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int empno = rs.getInt(1);
                String ename = rs.getString(2);
                String job = rs.getString(3);

                System.out.println(empno + " : " + ename + " : " + job);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    static void deleteEmp() {
        Scanner sc = new Scanner(System.in);
        System.out.println("사번입력 : ");
        int empno = sc.nextInt();

        String sql = "delete from emp01 where empno = " + empno;
        try {
            int result = stmt.executeUpdate(sql);

            if (result <= 0) {
                System.out.println("데이터 처리 실패");
            } else {
                System.out.println("데이터 처리 성공");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}