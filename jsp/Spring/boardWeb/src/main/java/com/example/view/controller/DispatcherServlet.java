package com.example.view.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("*.do")
public class DispatcherServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private HandlerMapping handlerMapping;
    private ViewResolver viewResolver;

    @Override
    public void init() throws ServletException {
        handlerMapping = new HandlerMapping();
        viewResolver = new ViewResolver();
        viewResolver.setPrefix("./");
        viewResolver.setSuffix(".jsp");

    }

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

        Controller ctrl = handlerMapping.getController(path);

        String viewName = ctrl.handleRequest(req, resp);

        String view = null;

        if (!viewName.contains(".do")) {
            view = viewResolver.getView(viewName);
        } else { // ./login.jsp
            view = viewName;
        }

        resp.sendRedirect(view);
        /*if (path.equals("/login.do")) {
            System.out.println("로그인 처리");

            String id = req.getParameter("id");
            String password = req.getParameter("password");

            UserVO vo = new UserVO();
            vo.setId(id);
            vo.setPassword(password);

            UserDAO userDAO = new UserDAO();
            UserVO user = userDAO.getUser(vo);

            if (user != null) {
                resp.sendRedirect("getBoardList.do");
            } else {
                resp.sendRedirect("login.jsp");
            }

        } else if (path.equals("/logout.do")) {
            System.out.println("로그아웃 처리");

            HttpSession session = req.getSession();
            session.invalidate();

            resp.sendRedirect("login.jsp");

        } else if (path.equals("/insertBoard.do")) {
            System.out.println("글 등록 처리");

            req.setCharacterEncoding("utf-8");
            String title = req.getParameter("title");
            String writer = req.getParameter("writer");
            String content = req.getParameter("content");

            BoardVO vo = new BoardVO();
            vo.setTitle(title);
            vo.setWriter(writer);
            vo.setContent(content);

            BoardDAO boardDAO = new BoardDAO();
            boardDAO.insertBoard(vo);

            resp.sendRedirect("getBoardList.do");

        } else if (path.equals("/updateBoard.do")) {
            System.out.println("글 수정 처리");

            req.setCharacterEncoding("utf-8");
            String title = req.getParameter("title");
            String content = req.getParameter("content");
            String seq = req.getParameter("seq");

            BoardVO vo = new BoardVO();
            vo.setTitle(title);
            vo.setContent(content);
            vo.setSeq(Integer.parseInt(seq));

            BoardDAO boardDAO = new BoardDAO();
            boardDAO.updateBoard(vo);

            resp.sendRedirect("getBoardList.do");

        } else if (path.equals("/deleteBoard.do")) {
            System.out.println("글 삭제 처리");

            String seq = req.getParameter("seq");

            BoardVO vo = new BoardVO();
            vo.setSeq(Integer.parseInt(seq));
            BoardDAO boardDAO = new BoardDAO();
            boardDAO.deleteBoard(vo);

            resp.sendRedirect("getBoardList.do");

        } else if (path.equals("/getBoard.do")) {
            System.out.println("글 상세 조회 처리");

            String seq = req.getParameter("seq");

            BoardVO vo = new BoardVO();
            vo.setSeq(Integer.parseInt(seq));
            BoardDAO boardDAO = new BoardDAO();
            BoardVO board = boardDAO.getBoard(vo);

            HttpSession session = req.getSession();
            session.setAttribute("board", board);

            resp.sendRedirect("getBoard.jsp");

        } else if (path.equals("/getBoardList.do")) {
            System.out.println("글 목록 검색 처리");

            BoardVO vo = new BoardVO();
            BoardDAO boardDAO = new BoardDAO();
            List<BoardVO> boardList = boardDAO.getBoardList(vo);

            HttpSession session = req.getSession();
            session.setAttribute("boardList", boardList);

            resp.sendRedirect("getBoardList.jsp");

        }*/
    }
}
