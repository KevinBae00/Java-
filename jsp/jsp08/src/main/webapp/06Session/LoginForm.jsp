<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-19
  Time: 오전 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../Common/Link.jsp"></jsp:include>
<span style="color: red; font-size: 1.2em;">
    <%=request.getAttribute("LoginErrMsg") == null ? "" : request.getAttribute("LoginErrMsg")%>
</span>
<%
    if (session.getAttribute("UserId") == null) {
%>
<script>
    function validateForm(form) {
        if (!form.user_id.value) {
            alert("아이디를 입력하세요.");
            return false;
        }
        if (!form.user_pw.value) {
            alert("패스워드를 입력하세요.");
            return false;
        }
    }
</script>
<form action="LoginProcess.jsp" method="post" name="LoginFrm" onsubmit="return validateForm(this);">
    아이디 : <input type="text" name="user_id"><br>
    패스워드 : <input type="password" name="user_pw"><br>
    <input type="submit" value="로그인하기">
</form>
<%} else {%>
<%=session.getAttribute("UserName")  %>회원님, 로그인 성공. <br>
<a href="LogOut.jsp">[로그아웃]</a>
<%}%>
</body>
</html>
