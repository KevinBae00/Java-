package mms.member.svc;

import mms.member.dao.MemberDAO;

import java.sql.Connection;

import static mms.member.db.JdbcUtil.*;

public class MemberRemoveService {

    public boolean removeMember(String name) {
        // TODO Auto-generated method stub
        boolean isRemoveSuccess = false;

        Connection con = getConnection();
        MemberDAO memberDAO = new MemberDAO(con);


        //코드를 완성하세요
        int deleteCount = memberDAO.deleteMember(name);

        if (deleteCount > 0) {
            isRemoveSuccess = true;
            commit(con);
        } else {
            rollback(con);
        }
        close(con);

        return isRemoveSuccess;
    }

}















