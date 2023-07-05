<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="javax.sql.*" %>
<%

    try {
        DataSource dataFactory;

        Context ctx = new InitialContext();
        Context envContext = (Context) ctx.lookup("java:/comp/env");
        dataFactory = (DataSource) envContext.lookup("jdbc/oracle");

        System.out.print("연결성공");
    } catch (Exception e) {
        e.printStackTrace();
    }


%>
