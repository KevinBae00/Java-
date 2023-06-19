<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-19
  Time: 오전 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="membership.MemberDAO" %>
<%@page import="membership.MemberDTO" %>
<%
    String userId = request.getParameter("user_id");
    String userPwd = request.getParameter("user_pw");
    String oracleDriver = application.getInitParameter("OracleDriver");
    String oracleURL = application.getInitParameter("OracleURL");
    String oracleId = application.getInitParameter("OracleId");
    String oraclePwd = application.getInitParameter("OraclePwd");

    MemberDAO dao = new MemberDAO(oracleDriver, oracleURL, oracleId, oraclePwd);
    MemberDTO memberDTO = dao.getMemberDTO(userId, userPwd);
    dao.close();

    if (memberDTO.getId() != null) {
        session.setAttribute("UserId", memberDTO.getId());
        session.setAttribute("UserName", memberDTO.getName());
        response.sendRedirect("LoginForm.jsp");
    } else {
        request.setAttribute("LoginErrMsg", "로그인 실패");
        request.getRequestDispatcher("LoginForm.jsp").forward(request, response);
    }
%>