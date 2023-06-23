package mms.member.controller;

import mms.member.action.Action;

import java.util.Scanner;

public class MemberControlloer {
    public void processRequest(Action action, Scanner sc) {
        try {
            action.execute(sc);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
