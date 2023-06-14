<%@ page import="com.example.jsp03.Person" %><%--
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-14
  Time: 오전 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>포워드로 전달된 페이지</h2>
<h4>RequestMain 파일의 리퀘스트 영역 속성 읽기</h4>
<%
    Person rPerson = (Person) (request.getAttribute("requestPerson"));
%>
<ul>
    <li>String 객체 : <%=request.getAttribute("requestString")%>
    </li>
    <li>Person 객체 : <%=rPerson.getName()%>, <%=rPerson.getAge()%>
    </li>
</ul>
<%
    request.setCharacterEncoding("UTF-8");
    String han = request.getParameter("paramHan");
    String eng = request.getParameter("paramEng");

    out.println(han);
    out.println(eng);
%>
</body>
</html>
