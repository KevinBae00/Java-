<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-28
  Time: PM 4:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>a {
        text-decoration: none;
    }</style>
</head>
<body>
<h2>파일 첨부형 게시판 - 목록보기(List)</h2>

<!-- 검색 폼 -->
<form method="get">
    <table border="1" width="90%">
        <tr>
            <td align="center">
                <select name="searchField">
                    <option value="title">제목</option>
                    <option value="content">내용</option>
                </select>
                <input type="text" name="searchWord"/>
                <input type="submit" value="검색하기"/>
            </td>
        </tr>
    </table>
</form>
<table border="1" width="90%">
    <tr>
        <th width="10%">번호</th>
        <th width="*">제목</th>
        <th width="15%">작성자</th>
        <th width="10%">조회수</th>
        <th width="15%">작성일</th>
        <th width="8%">첨부</th>
    </tr>

    <tr>
        <td colspan="6" align="center">
            등록된 게시물이 없습니다^^*
        </td>
    </tr>

    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>

<table border="1" width="90%">
    <tr>
        <td></td>
        <td></td>
    </tr>
</table>
</body>
</html>
