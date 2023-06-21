<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model1.BoardDAO" %>
<%@ page import="model1.BoardDTO" %>
<%@ include file="./IsLoggedIn.jsp" %>
<%
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    BoardDTO dto = new BoardDTO();
    dto.setTitle(title);
    dto.setContent(content);
    dto.setId(session.getAttribute("UserId").toString());

    BoardDAO dao = new BoardDAO(application);
    int result = dao.insertWrite(dto);

    if (result >= 0) {
        response.sendRedirect("List.jsp");
    } else {
        JSFunction.alertBack("글쓰기에 실패하였습니다.", out);
    }

%>