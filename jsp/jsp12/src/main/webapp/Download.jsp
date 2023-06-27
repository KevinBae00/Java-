<%@ page import="java.io.File" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.OutputStream" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-27
  Time: PM 3:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String saveDirectory = application.getRealPath("Uploads");
    String saveFilename = request.getParameter("sName");
    String originalFilename = request.getParameter("oName");

    File file = new File(saveDirectory, saveFilename);
    InputStream inStream = new FileInputStream(file);

//    한글 파일명 깨짐 방지
    String client = request.getHeader("User-Agent");
    if (client.indexOf("WOW64") == -1) {
        originalFilename = new String(originalFilename.getBytes("UTF-8"), "ISO-8859-1");
    } else {
        originalFilename = new String(originalFilename.getBytes("KSC5601"), "ISO-8859-1");
    }

    response.reset();
    response.setContentType("application/octet-stream");
    response.setHeader("Content-Disposition", "attachment; filename=\"" + originalFilename + "\"");
    response.setHeader("Content-Length", "" + file.length());

    out.clear();

    OutputStream outStream = response.getOutputStream();
    byte b[] = new byte[(int) file.length()];

    int readBuffer = 0;
    while ((readBuffer = inStream.read(b)) > 0) {
        outStream.write(b, 0, readBuffer);
    }

    inStream.close();
    outStream.close();
%>