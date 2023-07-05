import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;


@WebServlet("/member3")
public class MemberServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doHandle(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doHandle(request, response);
    }

    private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        MemberDAO dao = new MemberDAO();
        PrintWriter out = response.getWriter();
        String command = request.getParameter("command");
        if (command != null && command.equals("addMember")) {

            //코드 완성하기
            String id = request.getParameter("id");
            String pwd = request.getParameter("pwd");
            String name = request.getParameter("name");
            String email = request.getParameter("email");

            MemberVO memberVO = new MemberVO();
            memberVO.setId(id);
            memberVO.setPwd(pwd);
            memberVO.setName(name);
            memberVO.setEmail(email);

            dao.addMember(memberVO);

        } else if (command != null && command.equals("delMember")) {

            //코드 완성하기
            String id = request.getParameter("id");
            dao.delMember(id);

        } else if (command != null && command.equals("login")) {

            //코드 완성하기
            String id = request.getParameter("id");
            String pwd = request.getParameter("pwd");

            boolean check = dao.upMember(id, pwd);
            if (!check) {
//                request.getRequestDispatcher("loginForm.html").forward(request, response);
                out.println("<script>alert('로그인 실패'); history.go(-1);</script>");
                out.flush();
                response.flushBuffer();
                out.close();
            }
//            else {
//                out.println("<script>location.href='/webShop_war_exploded/member3'</script>");
//            }

        }

        List list = dao.listMembers();
        out.print("<html><body>");
        out.print("<table border=1><tr align='center' bgcolor='lightgreen'>");
        out.print("<td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td><td>가입일</td><td >삭제</td></tr>");

        for (int i = 0; i < list.size(); i++) {
            MemberVO memberVO = (MemberVO) list.get(i);
            String id = memberVO.getId();
            String pwd = memberVO.getPwd();
            String name = memberVO.getName();
            String email = memberVO.getEmail();
            Date joinDate = memberVO.getJoinDate();
            out.print("<tr><td>" + id + "</td><td>"
                    + pwd + "</td><td>"
                    + name + "</td><td>"
                    + email + "</td><td>"
                    + joinDate + "</td><td>"
                    + "<a href='/webShop_war_exploded/member3?command=delMember&id=" + id + "'>삭제 </a></td></tr>");

        }
        out.print("</table></body></html>");
        out.print("<a href='/webShop_war_exploded/memberForm.html'>새 회원 등록하기</a>");
    }
}
