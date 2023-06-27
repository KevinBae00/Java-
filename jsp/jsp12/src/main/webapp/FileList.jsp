<%@ page import="fileupload.MyfileDAO" %>
<%@ page import="fileupload.MyfileDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-27
  Time: PM 2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    MyfileDAO dao = new MyfileDAO();
    List<MyfileDTO> fileList = dao.myfileList();
    dao.close();
%>
<html>

<head>
    <title>Title</title>
</head>
<body>
<a href="FileUploadMain.jsp">파일 등록하기</a>
<table border="1">
    <tr>
        <th>번호</th>
        <th>이름</th>
        <th>제목</th>
        <th>카테고리</th>
        <th>원본 파일명</th>
        <th>저장된 파일명</th>
        <th>작성일자</th>
        <th>첨부파일</th>
    </tr>
    <%
        for (MyfileDTO f :
                fileList) {%>
    <tr>
        <td><%=f.getIdx()%>
        </td>
        <td><%=f.getName()%>
        </td>
        <td><%=f.getTitle()%>
        </td>
        <td><%=f.getCate()%>
        </td>
        <td><%=f.getOfile()%>
        </td>
        <td><%=f.getSfile()%>
        </td>
        <td><%=f.getPostdate()%>
        </td>
        <td>
            <a href="Download.jsp?oName=<%=URLEncoder.encode(f.getOfile(),"UTF-8")%>&sName=<%=URLEncoder.encode(f.getSfile(),"UTF-8")%>">[다운로드]</a>
        </td>
    </tr>
    <%}%>
</table>
</body>
</html>
