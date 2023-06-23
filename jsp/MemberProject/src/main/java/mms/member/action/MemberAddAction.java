package mms.member.action;

import mms.member.util.ConsoleUtil;
import mms.member.vo.Member;

import java.util.Scanner;

public class MemberAddAction implements Action {
    @Override
    public void execute(Scanner sc) throws Exception {
        ConsoleUtil cu = new ConsoleUtil();
        Member newMember = cu.getNewMember(sc);
    }
}
