package mms.member.action;

import mms.member.svc.MemberListService;
import mms.member.util.ConsoleUtil;
import mms.member.vo.Member;

import java.util.ArrayList;
import java.util.Scanner;

public class MemberListAction implements Action {
    public MemberListAction() {
    }

    public void execute(Scanner sc) {
        ConsoleUtil cu = new ConsoleUtil();
        MemberListService memberListService = new MemberListService();
        ArrayList<Member> memberList = memberListService.getMemberList();
        cu.printMemberList(memberList);
    }
}
