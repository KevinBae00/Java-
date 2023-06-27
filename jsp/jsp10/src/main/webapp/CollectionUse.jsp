<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="common.Person" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-26
  Time: AM 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<Object> aList = new ArrayList<>();
    aList.add("홍길동");
    aList.add(new Person("장보고", 28));

    pageContext.setAttribute("Ocean", aList);
%>

<p>${Ocean[0]}</p>
<p>${Ocean[1].name}</p>
<p>${Ocean[1].age}</p>

<%
    Map<String, String> map = new HashMap<String, String>();
    map.put("한굴", "훈민정음");
    map.put("eng", "english");
    pageContext.setAttribute("king", map);
%>

<p>${king["eng"]}</p>
<p>${king['eng']}</p>
<p>${king.eng}</p>

<p>${king["한굴"]}</p>
<p>${king['한굴']}</p>
<%--<p>${king.한글}</p>  에로--%>

<p>${2+3}</p>
</body>
</html>
