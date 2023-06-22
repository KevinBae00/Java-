<%@ page import="model1.BoardDTO" %>
<%@ page import="model1.BoardDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="IsLoggedIn.jsp" %>
<%
    String num = request.getParameter("num");
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    BoardDTO dto = new BoardDTO();
    dto.setNum(num);
    dto.setTitle(title);
    dto.setContent(content);

    BoardDAO dao = new BoardDAO(application);
    int result = dao.updateEdit(dto);

    if (result == 1) {
        response.sendRedirect("View.jsp?num=" + dto.getNum());
    } else {
        JSFunction.alertBack("수정하기에 실패하였습니다.", out);
    }
%>