import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
    private Connection con;
    private PreparedStatement pstmt;
    private DataSource dataFactory;

    public MemberDAO() {
        try {
            Context ctx = new InitialContext();
            Context envContext = (Context) ctx.lookup("java:/comp/env");
            dataFactory = (DataSource) envContext.lookup("jdbc/oracle");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<MemberVO> listMembers() {
        List<MemberVO> list = new ArrayList<MemberVO>();
        try {
            con = dataFactory.getConnection();

            //코드 완성하기
            String query = "select * from t_member";

            pstmt = con.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {

                //코드 완성하기
                MemberVO memberVO = new MemberVO();

                memberVO.setId(rs.getString("id"));
                memberVO.setPwd(rs.getString("pwd"));
                memberVO.setName(rs.getString("name"));
                memberVO.setEmail(rs.getString("email"));
                memberVO.setJoinDate(rs.getDate("joindate"));

                list.add(memberVO);
            }
            rs.close();
            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public void addMember(MemberVO memberVO) {
        try {
            con = dataFactory.getConnection();

            //코드 완성하기
            String query = "insert into t_member (id ,pwd ,name ,email )"
                    + " values (?,?,?,?)";

            pstmt = con.prepareStatement(query);
            pstmt.setString(1, memberVO.getId());
            pstmt.setString(2, memberVO.getPwd());
            pstmt.setString(3, memberVO.getName());
            pstmt.setString(4, memberVO.getEmail());

            pstmt.executeUpdate();

            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void delMember(String id) {
        try {
            con = dataFactory.getConnection();

            //코드 완성하기
            String query = "delete from t_member\n" +
                    "where id=?";


            pstmt = con.prepareStatement(query);
            pstmt.setString(1, id);

            pstmt.executeUpdate();

            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public Boolean upMember(String id, String pwd) {

        Boolean flag = false;

        try {
            // connDB();
            con = dataFactory.getConnection();

            //코드 완성하기
            String query = "select * from t_member where id = ? and pwd = ?";
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, id);
            pstmt.setString(2, pwd);

            ResultSet rs = pstmt.executeQuery();

//            MemberVO memberVO = new MemberVO();
//            rs.next();
//            String idx = rs.getString("id");
//
//            if (idx.equals(id)) flag = true;

            if (rs.next()) flag = true;

            rs.close();
            pstmt.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
}
