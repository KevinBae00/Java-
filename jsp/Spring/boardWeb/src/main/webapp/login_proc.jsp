<%@ page import="com.example.biz.user.UserVO" %>
<%@ page import="com.example.biz.user.impl.UserDAO" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-07-12
  Time: AM 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String id = request.getParameter("id");
    String password = request.getParameter("password");

    UserVO vo = new UserVO();
    vo.setId(id);
    vo.setPassword(password);

    UserDAO userDAO = new UserDAO();
    UserVO user = userDAO.getUser(vo);

    if (user != null) {
        response.sendRedirect("getBoardList.jsp");
    } else {
        response.sendRedirect("login.jsp");
    }
%>



