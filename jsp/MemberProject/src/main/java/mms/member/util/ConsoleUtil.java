package mms.member.util;

import mms.member.vo.Member;

import java.util.Scanner;

public class ConsoleUtil {
    public Member getNewMember(Scanner sc) {
        System.out.println("등록할 회원 정보를 입력하세요");
        System.out.print("이름 : ");
        String name = sc.next();

        System.out.print("주소 : ");
        String addr = sc.next();

        System.out.print("이메일 : ");
        String email = sc.next();

        System.out.print("국가 : ");
        String nation = sc.next();

        System.out.print("나이 : ");
        int age = sc.nextInt();

        return new Member(name, addr, nation, email, age);
    }
}
