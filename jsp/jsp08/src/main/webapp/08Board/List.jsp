<%@ page import="model1.BoardDAO" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="model1.BoardDTO" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-20
  Time: 오후 3:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    BoardDAO dao = new BoardDAO(application);
    Map<String, Object> param = new HashMap<String, Object>();

    String searchField = request.getParameter("searchField");
    String searchWord = request.getParameter("searchWord");

    if (searchWord != null) {
        param.put("searchField", searchField);
        param.put("searchWord", searchWord);
    }

    int totalCount = dao.selectCount(param);
    List<BoardDTO> boardLists = dao.selectList(param);
    dao.close();
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../Common/Link.jsp"/>
<h2>목록 보기(List)</h2>
<%--form태그에 action속성이 생략되어 있으면 현재 페이지로 이동한다.--%>
<form method="post">
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
    <table border="1" width="90%">
        <!-- 각 칼럼의 이름 -->
        <tr>
            <th width="10%">번호</th>
            <th width="50%">제목</th>
            <th width="15%">작성자</th>
            <th width="10%">조회수</th>
            <th width="15%">작성일</th>
        </tr>

        <%
            if (boardLists.isEmpty()) {
        %>
        <tr>
            <td colspan="5" align="center">
                등록된 게시물이 없습니다.^^*
            </td>
        </tr>
        <%
        } else {
            int virtualNum = 0;
            for (BoardDTO dto :
                    boardLists) {
                virtualNum = totalCount--;
        %>
        <tr align="center">
            <td><%=virtualNum%>
            </td>
            <td align="left"><a href="View.jsp?num=<%=dto.getNum()%>"><%=dto.getTitle()%>
            </a>
            </td>
            <td><%=dto.getId()%>
            </td>
            <td><%=dto.getVisitcount()%>
            </td>
            <td><%=dto.getPostdate()%>
            </td>
        </tr>
        <%
                }
            }
        %>
    </table>
    <table border="1" width="90%">
        <tr align="right">
            <td>
                <button type="button" onclick="location.href='Write.jsp';">글쓰기</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
