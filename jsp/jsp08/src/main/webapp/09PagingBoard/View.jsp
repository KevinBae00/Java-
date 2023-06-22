<%@ page import="model1.BoardDAO" %>
<%@ page import="model1.BoardDTO" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-21
  Time: 오후 2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String num = request.getParameter("num");

    BoardDAO dao = new BoardDAO(application);

    dao.updateVisitCount(num);
    BoardDTO dto = dao.selectView(num);
//    dao.con.setAutoCommit(false);
//    dao.con.commit();
    dao.close();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../Common/Link.jsp"/>
<h2>회원제 게시판 - 상세 보기(View)</h2>

<form name="writeFrm">
    <input type="hidden" name="num" value="<%=num%>">
    <table border="1" width="90%">
        <tr>
            <td>번호</td>
            <td><%=dto.getNum()%>
            </td>
            <td>작성자</td>
            <td><%=dto.getName()%>
            </td>
        </tr>
        <tr>
            <td>작성일</td>
            <td><%=dto.getPostdate()%>
            </td>
            <td>조회수</td>
            <td><%=dto.getVisitcount()%>
            </td>
        </tr>
        <tr>
            <td>제목</td>
            <td colspan="3"><%=dto.getTitle()%>
            </td>

        </tr>
        <tr>
            <td>내용</td>
            <td colspan="3" height="100"><%=dto.getContent().replace("\r\n", "<br>")%>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <%
                    if (session.getAttribute("UserId") != null &&
                            session.getAttribute("UserId").toString().equals(dto.getId())) {
                %>
                <button type="button" onclick="location.href='Edit.jsp?num=<%=dto.getNum()%>';">수정하기</button>
                <button type="button" onclick="deletePost()">삭제하기</button>
                <%}%>
                <button type="button" onclick="location.href='List.jsp';">목록보기</button>
            </td>
        </tr>
    </table>
</form>

<script>
    function deletePost() {
        if (confirm('삭제하시겠습니까?')) {
            const form = document.writeFrm;
            form.method = "post";
            form.action = "DeleteProcess.jsp";
            form.submit();
        }
    }

</script>
</body>
</html>
