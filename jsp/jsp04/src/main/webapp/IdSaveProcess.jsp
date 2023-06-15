<%@ page import="utils.CookieManager" %>
<%@ page import="utils.JSFunction" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-15
  Time: 오전 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String user_id = request.getParameter("user_id");
    String user_pw = request.getParameter("user_pw");
    String save_check = request.getParameter("save_check");

    if ("must".equals(user_id) && "1234".equals(user_pw)) {
        if (save_check != null && save_check.equals("Y"))
            CookieManager.makeCookie(response, "loginId", user_id, -1);
        else
            CookieManager.deleteCookie(response, "loginId");

        JSFunction.alertLocation("로그인에 성공했습니다.", "IdSaveMain.jsp", out);
    } else {
        JSFunction.alertBack("로그인에 실패했습니다.", out);
    }
%>