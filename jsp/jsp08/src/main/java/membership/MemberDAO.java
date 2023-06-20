package membership;

import common.JDBCConnect;

import java.sql.SQLException;

public class MemberDAO extends JDBCConnect {
    public MemberDAO(String driver, String url, String id, String pwd) {
        super(driver, url, id, pwd);
    }

    // 조회가능
    public MemberDTO getMemberDTO(String uid, String upass) {
        String query = "select * from member where id = ? and pass = ?";
        MemberDTO dto = new MemberDTO();

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, uid);
            psmt.setString(2, upass);

            rs = psmt.executeQuery();

            while (rs.next()) {
                dto.setId(rs.getString("id"));
                dto.setPass(rs.getString("pass"));
                dto.setName(rs.getString(3));
                dto.setRegidate(rs.getString(4));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return dto;
    }
}
