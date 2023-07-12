<%@ page import="com.example.biz.board.BoardVO" %>
<%@ page import="com.example.biz.board.impl.BoardDAO" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-07-12
  Time: PM 1:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String seq = request.getParameter("seq");

    BoardVO vo = new BoardVO();
    vo.setTitle(title);
    vo.setContent(content);
    vo.setSeq(Integer.parseInt(seq));

    BoardDAO boardDAO = new BoardDAO();
    boardDAO.updateBoard(vo);

    response.sendRedirect("getBoardList.jsp");
%>
