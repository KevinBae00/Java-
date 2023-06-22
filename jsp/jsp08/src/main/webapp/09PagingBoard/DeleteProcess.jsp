<%@ page import="model1.BoardDAO" %>
<%@ page import="model1.BoardDTO" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-21
  Time: 오후 5:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="IsLoggedIn.jsp" %>
<%
    String num = request.getParameter("num");

    BoardDAO dao = new BoardDAO(application);
    BoardDTO dto = dao.selectView(num);

    String sessionId = session.getAttribute("UserId").toString();

    if (sessionId.equals(dto.getId())) {
        int result = dao.deletePost(num);

        if (result == 1) {
            JSFunction.alertLocation("삭제되었습니다", "List.jsp", out);
        } else {
            JSFunction.alertBack("삭제하는데 실패하였습니다.", out);
        }
    } else {
        JSFunction.alertBack("작성자만 삭제가 가능합니다.", out);
    }

%>
