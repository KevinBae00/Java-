package model2.mvcboard;

import utils.JSFunction;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/mvcboard/pass.do")
public class PassController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public PassController() {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String mode = req.getParameter("mode");
        req.setAttribute("mode", mode);
        req.getRequestDispatcher("/14MVCBoard/Pass.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idx = req.getParameter("idx");
        String mode = req.getParameter("mode");
        String pass = req.getParameter("pass");

        MVCBoardDAO dao = new MVCBoardDAO();

        boolean confirmed = dao.confirmPassword(pass, idx);
        dao.close();

        if (confirmed) {

        } else {
            JSFunction.alertBack(resp, "비밀번호 검증에 실패했습니다.");
        }
    }
}
