<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p><%= request.getAttribute("message") %></p>
	<a href ="./HelloServlet.do">서블릿 요청1</a>
	<a href ="./HelloServlet2.do">서블릿 요청2</a>
</body>
</html>