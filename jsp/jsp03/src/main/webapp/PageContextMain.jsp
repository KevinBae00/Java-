<%@ page import="java.awt.print.Pageable" %>
<%@ page import="com.example.jsp03.Person" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-13
  Time: 오후 4:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("pageInteger", 1000);
    pageContext.setAttribute("pageString", "체이지 영역의 문자열");
    pageContext.setAttribute("pagePerson", new Person("한석봉", 99));
%>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int pInteger = (Integer) pageContext.getAttribute("pageInteger");
    String pString = pageContext.getAttribute("pageString").toString();
    Person pPerson = (Person) pageContext.getAttribute("pagePerson");
%>

<ul>
    <li><%=pInteger%>
    </li>
    <li><%=pString%>
    </li>
    <li><%=pPerson.getName()%>, <%=pPerson.getAge()%>
    </li>
</ul>

<h2>include된 파일에서 page 영역 읽어오기</h2>
<%@include file="PageInclude.jsp" %>

<h2>페이지 이동 후 page 영역 읽어오기</h2>
<a href="PageLocation.jsp">PageLocation.jsp 바로가기</a>
</body>
</html>
