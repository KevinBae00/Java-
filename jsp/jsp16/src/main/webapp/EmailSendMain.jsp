<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-07-03
  Time: PM 1:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>이메일 전송하기</h2>
<form method="post" action="SendProcess.jsp">
    <table border=1>
        <tr>
            <td>
                보내는 사람 : <input type="text" name="from" value=""/>
            </td>
        </tr>
        <tr>
            <td>
                받는 사람 : <input type="text" name="to" value=""/>
            </td>
        </tr>
        <tr>
            <td>
                제목 : <input type="text" name="subject" size="50" value=""/>
            </td>
        </tr>
        <tr>
            <td>
                형식 :
                <input type="radio" name="format" value="text" checked/>Text
                <input type="radio" name="format" value="html"/>HTML
            </td>
        </tr>
        <tr>
            <td>
                <textarea name="content" cols="60" rows="10"></textarea>
            </td>
        </tr>
        <tr>
            <td>
                <button type="submit">전송하기</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
