<%@ page import="com.example.jsp03.Person" %><%--
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-14
  Time: 오전 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int pInteger2 = (Integer) pageContext.getAttribute("pageInteger");
    String pString2 = pageContext.getAttribute("pageString").toString();
    Person pPerson2 = (Person) pageContext.getAttribute("pagePerson");
%>

<ul>
    <li><%=pInteger2%>
    </li>
    <li><%=pString2%>
    </li>
    <li><%=pPerson2.getName()%>, <%=pPerson2.getAge()%>
    </li>
</ul>
