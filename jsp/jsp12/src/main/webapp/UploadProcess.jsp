<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.File" %>
<%@ page import="fileupload.MyfileDTO" %>
<%@ page import="fileupload.MyfileDAO" %>
<%@ page import="java.io.IOException" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-26
  Time: PM 4:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    try {
        String saveDirectory = application.getRealPath("Uploads");
        int maxPostSize = 1024 * 1000;
        String encoding = "UTF-8";

        File dir = new File(saveDirectory);
        if (!dir.exists()) dir.mkdirs();
        // request,저정위치,크기,인코딩 방식,이름정책
        MultipartRequest mr = new MultipartRequest(request, saveDirectory, maxPostSize, encoding);

        String fileName = mr.getFilesystemName("attachedFile"); //현재 파일 이름
        String ext = fileName.substring(fileName.lastIndexOf("."));
        String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
        String newFileName = now + ext;  // text.txt -> 20230127122100.txt

        //파일명 변경

        File oldFile = new File(saveDirectory + File.separator + fileName);
        File newFile = new File(saveDirectory + File.separator + newFileName);

        oldFile.renameTo(newFile);

        String name = mr.getParameter("name");
        String title = mr.getParameter("title");
        String[] cateArray = mr.getParameterValues("cate");


        StringBuffer cateBuf = new StringBuffer();
        if (cateArray == null) {
            cateBuf.append("선택파일없음");
        } else {
            for (String s : cateArray) {
                cateBuf.append(s + ",");  //"사진,과제,음원"
            }
        }

        MyfileDTO dto = new MyfileDTO();
        dto.setName(name);
        dto.setTitle(title);
        dto.setCate(cateBuf.toString());
        dto.setOfile(fileName);
        dto.setSfile(newFileName);

        MyfileDAO dao = new MyfileDAO();
        dao.insertFile(dto);
        dao.close();

        response.sendRedirect("FileList.jsp");
    } catch (IOException e) {
        e.printStackTrace();
        request.setAttribute("errorMessage", "파일 업로드 오류");
        request.getRequestDispatcher("FileUploadMain.jsp").forward(request, response);
    }

%>