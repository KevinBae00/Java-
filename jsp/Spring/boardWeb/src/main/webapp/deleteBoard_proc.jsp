<%@ page import="com.example.biz.board.BoardVO" %>
<%@ page import="com.example.biz.board.impl.BoardDAO" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-07-12
  Time: PM 1:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String seq = request.getParameter("seq");

    BoardVO vo = new BoardVO();
    vo.setSeq(Integer.parseInt(seq));

    BoardDAO boardDAO = new BoardDAO();
    boardDAO.deleteBoard(vo);

    response.sendRedirect("getBoardList.jsp");
%>