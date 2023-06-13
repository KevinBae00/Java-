<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-13
  Time: 오후 1:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = request.getParameter("user_id");
    String pwd = request.getParameter("user_pwd");

    if (id.equalsIgnoreCase("must") && pwd.equalsIgnoreCase("1234")) {
        response.sendRedirect("responseWelcome.jsp");
    } else {
//        response.sendRedirect("responseMain.jsp?loginErr=1");
        RequestDispatcher dispatcher = request.getRequestDispatcher("responseMain.jsp?loginErr=1");
        dispatcher.forward(request, response);
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
