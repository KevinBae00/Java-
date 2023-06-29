<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-29
  Time: PM 3:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1" width="90%">
    <colgroup>
        <col width="15%"/>
        <col width="35%"/>
        <col width="15%"/>
        <col width="*"/>
    </colgroup>

    <!-- 게시글 정보 -->
    <tr>
        <td>번호</td>
        <td>${ dto.idx }</td>
        <td>작성자</td>
        <td>${ dto.name }</td>
    </tr>
    <tr>
        <td>작성일</td>
        <td>${ dto.postdate }</td>
        <td>조회수</td>
        <td>${ dto.visitcount }</td>
    </tr>
    <tr>
        <td>제목</td>
        <td colspan="3">${ dto.title }</td>
    </tr>
    <tr>
        <td>내용</td>
        <td colspan="3" height="100">${ dto.content }</td>
    </tr>
    <tr>
        <td>첨부파일</td>
        <td>
            <c:if test="${not empty dto.ofile}">
                ${dto.ofile}
                <a href="../mvcboard/download.do?ofile=${dto.ofile}&sfile=${dto.sfile}&idx=${dto.idx}">[다운로드]</a>
            </c:if>
        </td>
        <td>다운로드수</td>
        <td>
            ${dto.downcount}
        </td>
    </tr>
    <tr>
        <td colspan="4" align="center">
            <button type="button" onclick="location.href='../mvcboard/pass.do?mode=edit&idx=${ param.idx }';">
                수정하기
            </button>
            <button type="button" onclick="location.href='../mvcboard/pass.do?mode=delete&idx=${ param.idx }';">
                삭제하기
            </button>
            <button type="button" onclick="location.href='../mvcboard/list.do';">
                목록 바로가기
            </button>
        </td>
    </tr>
</table>
</body>
</html>
