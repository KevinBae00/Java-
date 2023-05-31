import java.util.Scanner;

public class LoginExceptionTest {
    static String user_id = "adc";
    static String user_pw = "1234";

    public static void main(String[] args) {
        try {
            Scanner scanner = new Scanner(System.in);

            System.out.println("아이디 입력 : ");
            String input_id = scanner.nextLine();

            System.err.println("비번 입력 : ");
            String input_pw = scanner.nextLine();

            if (user_id.equals(input_id)) { // 문자열 비교시 equals
                throw new LoginException("아이디를 잘못 입력 했음");
            } else if (!user_pw.equals(input_pw)) {
                throw new LoginException("비번을 잘못 입력 했음");
            } else {
                System.out.println("로그인 성공");
            }
        } catch (LoginException e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
    }
}
