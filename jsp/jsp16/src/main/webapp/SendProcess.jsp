<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-07-03
  Time: PM 2:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="smtp.NaverSMTP" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>
<%
    Map<String, String> emailInfo = new HashMap<String, String>();

    emailInfo.put("from", request.getParameter("from")); // 보내는 사람
    emailInfo.put("to", request.getParameter("to")); // 받는 사람
    emailInfo.put("subject", request.getParameter("subject")); // 제목

    String content = request.getParameter("content"); // 내용
    String format = request.getParameter("format"); // 메일 포맷(text 혹은 html)

    if (format.equals("text")) {
        emailInfo.put("content", content);
        emailInfo.put("format", "text/plain;charset=UTF-8");

    } else if (format.equals("html")) {
        content = content.replace("\r\n", "<br>");

        String htmlContent = "";

        try {
            // HTML 메일용 템플릿 파일 읽기
            String templatePath = application.getRealPath("./MailForm.html");
            BufferedReader br = new BufferedReader(new FileReader(templatePath));

            // 한 줄씩 읽어 htmlContent 변수에 저장
            String oneLine;
            while ((oneLine = br.readLine()) != null) {
                htmlContent += oneLine + "\n";
            }
            br.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        htmlContent = htmlContent.replace("_CONTENT_", content);
        emailInfo.put("format", "text/plain;charset=UTF-8");
    }

    try {
        NaverSMTP smtpServer = new NaverSMTP();
        smtpServer.emailSending(emailInfo);
        out.print("이메일 전송 성공");
    } catch (Exception e) {
        out.print("이메일 전송 실패");
        e.printStackTrace();
    }
%>
