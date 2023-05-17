import java.util.Scanner;

public class ControllerEx {
    public static void main(String[] args) {
//        if (조건식){
//
//        }else {
//
//        };

//        int score = 70;
//
//        if (score >= 60) {
//            System.out.println("시험합격");
//        } else {
//            System.out.println("시험불합격");
//        }
//        System.out.println("열심히 하자");

//        int score = 90;

//        if () {
//        } else if () {
//        } else if () {
//        } else {
//        }

        // 2와 3의 배수
//        int num = 5;

//        if(num%2==0){
//            if(num%3==0){
//                System.out.println("2와 3의 공배수 입니다");
//            }
//        }else System.out.println("공배수가 아닙니다.");

//        int num = 5;
//        if (num % 2 == 0 && num % 3 == 0) {
//            System.out.println("2와 3의 공배수 입니다.");
//        } else System.out.println("공배수가 아닙니다.");

//        switch
//        비교값은 숫자, 문자, 문자열 형식이 가능
//        실수는 사용불가
//        비교값은 변수 또는 실제값 사용가능
//        case문의 값은 변수 사용 불가, 같은 값 사용 불가
//        등가연산만 가능하다.

        Scanner sc = new Scanner(System.in);

        System.out.println("+,-,X,/ 중 하나늘 입력");
        char op = sc.nextLine().charAt(0);

        System.out.println("첫번쨰 숫자를 입력하세요");
        int num1 = sc.nextInt();
        System.out.println("두번쨰 숫자를 입력하세요");
        int num2 = sc.nextInt();

        switch (op) {
            case '+':
                System.out.println(num1 + num2);
                break;

            case '-':
                System.out.println(num1 - num2);
                break;

            case 'X':
                System.out.println(num1 * num2);
                break;

            case '/':
                System.out.println(num1 / num2);
                break;

            default:
                System.out.println("연산 실패");
        }

    }
}
