package com.example.view.controller;

import com.example.biz.user.UserVO;
import com.example.biz.user.impl.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("*.do")
public class DispatcherServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DispatcherServlet() {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        process(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        process(req, resp);
    }

    protected void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        String path = uri.substring(uri.lastIndexOf("/"));
        System.out.println(path);

        if (path.equals("/login.do")) {
            System.out.println("로그인 처리");

            String id = req.getParameter("id");
            String password = req.getParameter("password");

            UserVO vo = new UserVO();
            vo.setId(id);
            vo.setPassword(password);

            UserDAO userDAO = new UserDAO();
            UserVO user = userDAO.getUser(vo);

            if (user != null) {
                resp.sendRedirect("getBoardList.jsp");
            } else {
                resp.sendRedirect("login.jsp");
            }
        } else if (path.equals("/logout.do")) {
            System.out.println("로그아웃 처리");
        } else if (path.equals("/insertBoard.do")) {
            System.out.println("글 등록 처리");
        } else if (path.equals("/updateBoard.do")) {
            System.out.println("글 수정 처리");
        } else if (path.equals("/deleteBoard.do")) {
            System.out.println("글 삭제 처리");
        } else if (path.equals("/getBoard.do")) {
            System.out.println("글 상세 조회 처리");
        } else if (path.equals("/getBoardList.do")) {
            System.out.println("글 목록 검색 처리");
        }
    }
}
