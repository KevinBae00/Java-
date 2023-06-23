package mms.member.action;

import mms.member.svc.MemberModifyService;
import mms.member.util.ConsoleUtil;
import mms.member.vo.Member;

import java.util.Scanner;

public class MemberModifyAction implements Action {
    public MemberModifyAction() {
    }

    public void execute(Scanner sc) {
        ConsoleUtil cu = new ConsoleUtil();
        String name = cu.getName("수정할 ", sc);
        MemberModifyService memberModifyService = new MemberModifyService();
        Member oldMember = memberModifyService.getOldMember(name);
        Member updateMember = cu.getUpdateMember(sc, oldMember);
        boolean isModifySuccess = memberModifyService.modifyMember(updateMember);
        if (isModifySuccess) {
            cu.printModifySuccessMessage(updateMember);
        } else {
            cu.printModifyFailMessage(updateMember);
        }

    }
}