package mms.member.ui;

import mms.member.action.*;
import mms.member.controller.MemberControlloer;

import java.util.Scanner;

public class MemberUI {
    public static void main(String[] args) {
        boolean isStop = false;
        MemberControlloer memberControlloer = new MemberControlloer();

        Scanner sc = new Scanner(System.in);

        do {
            System.out.println("=====회원관리 프로그램=====");
            System.out.println("1.회원등록");
            System.out.println("2.회원목록보기");
            System.out.println("3.회원정보수정");
            System.out.println("4.회원정보삭제");
            System.out.println("5.프로그램종료");
            System.out.println("메뉴번호 : ");
            int menu = sc.nextInt();
            Action action = null;

            switch (menu) {
                case 1:
                    action = new MemberAddAction();
                    break;

                case 2:
                    action = new MemberListAction();
                    break;

                case 3:
                    action = new MemberModifyAction();
                    break;

                case 4:
                    action = new MemberRemoveAction();
                    break;

                case 5:
                    isStop = true;

                default:
                    break;
            }

            if (action != null) {
                memberControlloer.processRequest(action, sc);
            }
        } while (!isStop);

    }
}
