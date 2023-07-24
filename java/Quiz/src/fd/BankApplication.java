package fd;

import java.util.Scanner;

public class BankApplication {
    private static Account[] accountArray = new Account[100];
    private static Scanner scanner = new Scanner(System.in);

    private static int max = 0;

    public static void main(String[] args) {
        boolean run = true;
        while (run) {
            System.out.println("------------------------------------------");
            System.out.println("1.계좌생성 | 2.계좌목록 | 3.예금 | 4.출금 | 5.종료");
            System.out.println("------------------------------------------");
            System.out.print("선택> ");

            // 메뉴선택 기능 코드완성 하기

            int answer = scanner.nextInt();
            scanner.nextLine();

            switch (answer) {
                case 1:
                    createAccount();
                    break;

                case 2:
                    accountList();
                    break;

                case 3:
                    deposit();
                    break;

                case 4:
                    withdraw();
                    break;

                case 5:
                    run = false;
            }


        }
        System.out.println("프로그램 종료");
    }

    //계좌생성하기
    private static void createAccount() {
        System.out.println("계좌번호 입력 : ex) 123-123");
        String ano = scanner.next();
        System.out.println("계좌주 입력 : ");
        String owner = scanner.next();
        System.out.println("초기입금액 : ");
        int balance = scanner.nextInt();

        //계좌생성 코드완성 하기

        for (int i = 0; i < max; i++) {
            if (accountArray[i].equals(ano)) {
                System.out.println("같은 계좌번호가 이미 존재합니다.");
                return;
            }
            if (balance <= 0) {
                System.out.println("입금하는 금액은 0보다 커야 합니다.");
                return;
            }
        }

        accountArray[max] = new Account(ano, owner, balance);
        max++;
    }

    //계좌목록보기
    private static void accountList() {
        //계좌목록보기 코드완성 하기
        for (int i = 0; i < max; i++) {
            System.out.println(accountArray[i].toString());
        }
    }

    //예금하기
    private static void deposit() {
        System.out.println("입금하실 계좌번호 입력 : ex) 123-123");
        String ano = scanner.next();

        //예금하기 코드완성 하기
        for (int i = 0; i < max; i++) {
            if (accountArray[i].equals(ano)) {
                System.out.print("입금액: ");
                int money = scanner.nextInt();
                if (money <= 0) {
                    System.out.println("결과: 입금에 실패하였습니다.");
                    System.out.println("입금하는 금액은 0보다 커야 합니다.");
                    return;
                }
                accountArray[i].setBalance(accountArray[i].getBalance() + money);
                System.out.println("결과: 입금이 성공되었습니다.");
                break;
            }
        }
    }


    //출금하기
    private static void withdraw() {
        System.out.println("출금하실 계좌번호 입력 : ex) 123-123");
        String ano = scanner.next();

        //출금하기 코드완성 하기
        for (int i = 0; i < max; i++) {
            if (accountArray[i].equals(ano)) {
                System.out.print("출금액: ");
                int money = scanner.nextInt();
                if (accountArray[i].getBalance() < money) {
                    System.out.println("결과: 출금에 실패하였습니다.");
                    System.out.println("출금하는 금액이 보유하신 금액보다 큽니다.");
                    return;
                }
                accountArray[i].setBalance(accountArray[i].getBalance() - money);
                System.out.println("결과: 출금이 성공되었습니다.");
                break;
            }
        }
    }


}