//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package mms.member.dao;

import mms.member.db.JdbcUtil;
import mms.member.vo.Member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
    Connection con;

    public MemberDAO(Connection con) {
        this.con = con;
    }

    public int insertNewMember(Member newMember) {
        int insertCount = 0;
        PreparedStatement pstmt = null;
        String sql = "INSERT INTO member VALUES(member_id_seq.nextval,?,?,?,?,?)";

        try {
            pstmt = this.con.prepareStatement(sql);
            pstmt.setString(1, newMember.getName());
            pstmt.setString(2, newMember.getAddr());
            pstmt.setString(3, newMember.getNation());
            pstmt.setString(4, newMember.getEmail());
            pstmt.setInt(5, newMember.getAge());
            insertCount = pstmt.executeUpdate();
        } catch (SQLException var14) {
            var14.printStackTrace();
        } finally {
            try {
                JdbcUtil.close(pstmt);
            } catch (Exception var13) {
                var13.printStackTrace();
            }

        }

        return insertCount;
    }

    public ArrayList<Member> selectMemberList() {
        ArrayList<Member> memberList = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM member";

        try {
            pstmt = this.con.prepareStatement(sql);
            rs = pstmt.executeQuery();
            memberList = new ArrayList();
            Member member = null;

            while (rs.next()) {
                member = new Member(rs.getString("name"), rs.getString("addr"), rs.getString("nation"), rs.getString("email"), rs.getInt("age"));
                memberList.add(member);
            }
        } catch (SQLException var14) {
            var14.printStackTrace();
        } finally {
            try {
                JdbcUtil.close(rs);
                JdbcUtil.close(pstmt);
            } catch (Exception var13) {
                var13.printStackTrace();
            }

        }

        return memberList;
    }

    public Member selectOldMember(String name) {
        Member oldMember = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM member WHERE name = ?";

        try {
            pstmt = this.con.prepareStatement(sql);
            pstmt.setString(1, name);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                oldMember = new Member(rs.getString("name"), rs.getString("addr"), rs.getString("nation"), rs.getString("email"), rs.getInt("age"));
            }
        } catch (SQLException var15) {
            var15.printStackTrace();
        } finally {
            try {
                JdbcUtil.close(rs);
                JdbcUtil.close(pstmt);
            } catch (Exception var14) {
                var14.printStackTrace();
            }

        }

        return oldMember;
    }

    public int updateMember(Member updateMember) {
        int updateCount = 0;
        PreparedStatement pstmt = null;
        String sql = "UPDATE member SET addr = ?, nation = ?, email = ?, age = ? WHERE name = ?";

        try {
            pstmt = this.con.prepareStatement(sql);
            pstmt.setString(1, updateMember.getAddr());
            pstmt.setString(2, updateMember.getNation());
            pstmt.setString(3, updateMember.getEmail());
            pstmt.setInt(4, updateMember.getAge());
            pstmt.setString(5, updateMember.getName());
            updateCount = pstmt.executeUpdate();
        } catch (SQLException var14) {
            var14.printStackTrace();
        } finally {
            try {
                JdbcUtil.close(pstmt);
            } catch (Exception var13) {
                var13.printStackTrace();
            }

        }

        return updateCount;
    }

    public int deleteMember(String name) {
        int deleteCount = 0;
        PreparedStatement pstmt = null;
        String sql = "DELETE member WHERE name = ?";

        try {
            pstmt = this.con.prepareStatement(sql);
            pstmt.setString(1, name);
            deleteCount = pstmt.executeUpdate();
        } catch (SQLException var14) {
            var14.printStackTrace();
        } finally {
            try {
                JdbcUtil.close(pstmt);
            } catch (Exception var13) {
                var13.printStackTrace();
            }

        }

        return deleteCount;
    }
}
