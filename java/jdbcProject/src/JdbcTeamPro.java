//6월 9일 - 3

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class JdbcTeamPro {


    static Connection con = null;    //select 구문 전용
    static Statement stmt = null;    //select 구문 전
    static ResultSet rs = null;


    public static void main(String[] args) {
        // TODO Auto-generated method stub

        String url = "jdbc:oracle:thin:@localhost:1521:xe";


        try {          //2단계: 예외처리해주기
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, "scott", "tiger");
            System.out.println("연결 성공");

            stmt = con.createStatement();


        } catch (ClassNotFoundException e) {

            e.printStackTrace();
        } catch (SQLException e) {

            e.printStackTrace();
        }

        ////////////////////////////////////////////////////////////////반복의 영역
        while (true) {

            System.out.println("================ 메뉴선택 ===============");
            System.out.println("1. 등록  2. 조회  3. 삭제  4. 종료");
            System.out.println("================ 메뉴선택 ===============");
            System.out.println("메뉴를 선택하세요 : ");
            Scanner scanner = new Scanner(System.in);
            int select = scanner.nextInt();
            scanner.nextLine();

            int data = 0;
            if (select == 1) {
                while (true) {
                    System.out.println("================ 항목선택 ===============");
                    System.out.println("1. 고객  2. 배송  3. 상품");
                    System.out.println("================ 항목선택 ===============");
                    System.out.println("항목을 선택하세요 : ");
                    data = scanner.nextInt();
                    scanner.nextLine();

                    if (data == 1 || data == 2 || data == 3) break;
                }
            }

            switch (select) {
                case 1:
                    insertRe(data);
                    break;

                case 2:
                    selectRe();
                    break;

                case 3:
                    deleteRe();
                    break;

                case 4:
                    System.out.println("프로그램 종료");
                    System.exit(0);
                    break;

                default:
                    System.out.println("메뉴를 다시 선택하세요 : ");
            }

        }
        /////////////////////////////////////////////////////반복의 영역


    }


    static void insertRe(int data) {
        Scanner sc = new Scanner(System.in);
        String sql = null;

        if (data == 1) {
            System.out.println("고객 번호 입력: ");
            int cstId = sc.nextInt();

            sc.nextLine();

            System.out.println("고객 이름 입력: ");
            String name = sc.nextLine();

            System.out.println("고객 등급 입력: ");
            String grade = sc.nextLine();

            sql = "insert into customer"
                    + " values (" + cstId + ",'" + name + "'," + grade + ")";

        } else if (data == 2) {
            System.out.println("운송장 번호 입력: ");
            int delno = sc.nextInt();

            sc.nextLine();

            System.out.println("배송지 입력: ");
            String loc = sc.nextLine();


            sql = "insert into customer"
                    + " values (" + delno + ",'" + loc + "')";
        } else if (data == 3) {
            sql = "select * from customer";
            try {
                rs = stmt.executeQuery(sql);
                System.out.println("cstId : name : grade");
                while (rs.next()) {
                    int cstId = rs.getInt(1);
                    String name = rs.getString(2);
                    String grade = rs.getString(3);
                    System.out.println(cstId + " : " + name + " : " + grade);
                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            System.out.println("------------------------------------");
            sql = "select * from delivery";

            try {
                rs = stmt.executeQuery(sql);
                System.out.println("delno : loc");
                while (rs.next()) {
                    int delno = rs.getInt(1);
                    String loc = rs.getString(2);
                    System.out.println(delno + " : " + loc);
                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            System.out.println("------------------------------------");
            System.out.println("상품 번호 입력: ");
            int proid = sc.nextInt();

            sc.nextLine();

            System.out.println("고객번호 입력: ");
            int cstId = sc.nextInt();

            sc.nextLine();

            System.out.println("운송장 번호 입력: ");
            int delno = sc.nextInt();

            sc.nextLine();

            System.out.println("가격 입력: ");
            int price = sc.nextInt();

            sc.nextLine();

            sql = "insert into product"
                    + " values (" + proid + "," + cstId + "," + delno + "," + price + ")";
        }

        try {
            int result = stmt.executeUpdate(sql);

            if (result <= 0) {
                System.out.println("테이터 처리 실패");
            } else {
                System.out.println("데이터 처리 성공");

            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }


    }

    static void selectRe() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("================ 항목선택 ===============");
        System.out.println("1. 고객 정보 보기  2. 배송지 정보 보기 3.운송되고 있는 상품 보기");
        System.out.println("================ 항목선택 ===============");
        System.out.println("항목을 선택하세요 : ");
        int choice = scanner.nextInt();
        scanner.nextLine();
        String sql;
        if (choice == 3) {
            sql = "select c.cstId, c.name, c.grade, p.proid, d.delno, p.price, d.loc "
                    + "from  customer c right outer join product p "
                    + "on c.cstId = p.cstId "
                    + "left outer join delivery d "
                    + "on p.delno = d.delno";

            try {
                rs = stmt.executeQuery(sql);
                System.out.println("cstId : name : grade : proid : delno : price : loc");
                while (rs.next()) {
                    int cstId = rs.getInt(1);
                    String name = rs.getString(2);
                    String grade = rs.getString(3);
                    int proid = rs.getInt(4);
                    int delno = rs.getInt(5);
                    int price = rs.getInt(6);
                    String loc = rs.getString(7);
                    System.out.println(cstId + " : " + name + " : " + grade + " : " + proid + " : " + delno + " : " + price + " : " + loc);
                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        } else if (choice == 1) {
            sql = "select * from customer";

            try {
                rs = stmt.executeQuery(sql);
                System.out.println("cstId : name : grade");
                while (rs.next()) {
                    int cstId = rs.getInt(1);
                    String name = rs.getString(2);
                    String grade = rs.getString(3);
                    System.out.println(cstId + " : " + name + " : " + grade);
                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        } else if (choice == 2) {
            sql = "select * from delivery";

            try {
                rs = stmt.executeQuery(sql);
                System.out.println("delno : loc");
                while (rs.next()) {
                    int delno = rs.getInt(1);
                    String loc = rs.getString(2);
                    System.out.println(delno + " : " + loc);
                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }


    static void deleteRe() {
        Scanner sc = new Scanner(System.in);

        System.out.println("삭제할 상품번호 입력: ");
        int proid = sc.nextInt();

        String sql = "delete  from product where proid = " + proid;
        try {
            int result = stmt.executeUpdate(sql);


            if (result <= 0) {
                System.out.println("테이터 처리 실패");
            } else {
                System.out.println("데이터 처리 성공");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}