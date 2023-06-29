<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-29
  Time: PM 4:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="writeFrm" method="post" action="../mvcboard/pass.do" onsubmit="return validateForm(this)">
    <input type="hidden" name="idx" value="${param.idx}">
    <input type="hidden" name="mode" value="${param.mode}">
    <table border="1" width="90%">
        <tr>
            <td>비밀번호</td>
            <td>
                <input type="password" name="pass" style="width:100px;"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <button type="submit">검증하기</button>
                <button type="reset">RESET</button>
                <button type="button" onclick="location.href='../mvcboard/list.do';">
                    목록 바로가기
                </button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
