<%@ page import="model1.BoardDAO" %><%--
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
    int result = dao.delete(num);

    if (result == 1) {
        response.sendRedirect("List.jsp");
    } else {
        JSFunction.alertBack("삭제하는데 실패하였습니다.", out);
    }
%>
