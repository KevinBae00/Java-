package mms.member.action;

import mms.member.svc.MemberRemoveService;
import mms.member.util.ConsoleUtil;

import java.util.Scanner;

public class MemberRemoveAction implements Action {
    public MemberRemoveAction() {
    }

    public void execute(Scanner sc) {
        ConsoleUtil cu = new ConsoleUtil();
        String name = cu.getName("삭제할 ", sc);
        MemberRemoveService memberRemoveService = new MemberRemoveService();
        boolean removeSuccess = memberRemoveService.removeMember(name);
        if (removeSuccess) {
            cu.printRemoveSuccessMessage(name);
        } else {
            cu.printRemoveFailMessage(name);
        }

    }
}
