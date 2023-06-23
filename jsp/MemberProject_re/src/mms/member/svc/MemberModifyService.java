package mms.member.svc;

import mms.member.dao.MemberDAO;
import mms.member.vo.Member;

import java.sql.Connection;

import static mms.member.db.JdbcUtil.*;

public class MemberModifyService {

    public Member getOldMember(String name) {
        // TODO Auto-generated method stub
        Member oldMember = null;
        Connection con = getConnection();
        MemberDAO memberDAO = new MemberDAO(con);
        oldMember = memberDAO.selectOldMember(name);
        close(con);
        return oldMember;
    }

    public boolean modifyMember(Member updateMember) {
        // TODO Auto-generated method stub
        boolean isModifySuccess = false;
        Connection con = getConnection();
        MemberDAO memberDAO = new MemberDAO(con);


        //코드를 완성하세요
        int updateCount = memberDAO.updateMember(updateMember);


        if (updateCount > 0) {
            isModifySuccess = true;
            commit(con);
        } else {
            rollback(con);
        }
        close(con);
        return isModifySuccess;
    }

}














