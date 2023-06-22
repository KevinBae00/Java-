<%@ page import="model1.BoardDAO" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="model1.BoardDTO" %>
<%@ page import="utils.BoardPage" %><%--
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

//    전체 페이지 수 계산
    int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
    int blockPage = Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));
    int totalPage = (int) Math.ceil((double) totalCount / pageSize);

//    현재 페이지 확인
    int pageNum = 1;
    String pageTemp = request.getParameter("pageNum");
    if (pageTemp != null && !pageTemp.equals(""))
        pageNum = Integer.parseInt(pageTemp);

//    목록에 출력한 게시물 범위 계산
    int start = (pageNum - 1) * pageSize + 1; // 1, 11, 21
    int end = pageNum * pageSize; // 10, 20, 30

    param.put("start", start);
    param.put("end", end);

    List<BoardDTO> boardLists = dao.selectListPage(param);
    dao.close();
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../Common/Link.jsp"/>
<h2>목록 보기(List) - 현재 페이지 : <%=pageNum%>{전체:<%=totalPage%>}</h2>

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
            int countNum = 0;
            for (BoardDTO dto :
                    boardLists) {
                virtualNum = totalCount - ((pageNum - 1) * pageSize) - countNum++;
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
        <tr align="center">
            <%--            페이징 처리--%>
            <td>
                <%=BoardPage.pagingStr(totalCount, pageSize, blockPage, pageNum, request.getRequestURI())%>
            </td>
            <td>
                <button type="button" onclick="location.href='Write.jsp';">글쓰기</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
