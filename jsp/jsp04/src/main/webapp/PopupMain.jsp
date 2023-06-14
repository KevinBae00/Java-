<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-14
  Time: 오후 3:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String popupMode = "on";

    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            String cookieName = c.getName();
            String cookieValue = c.getValue();
            if (cookieName.equals("PopupClose")) {
                popupMode = cookieValue;
            }
        }
    }
%>
<html>
<head>
    <title>Title</title>
    <style>
        div#popup {
            position: absolute;
            top: 100px;
            left: 100px;
            color: yellow;
            width: 300px;
            height: 100px;
            background-color: gray;
        }

        div#popup > div {
            position: relative;
            background-color: #ffffff;
            top: 0;
            border: 1px solid gray;
            padding: 10px;
            color: black;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(function () {
            $("#closeBtn").click(function () {
                $("#popup").hide();
                var chkVal = $("input:checkbox[id=inactiveToday]:checked").val();
                $.ajax({
                    url: './PopupCookie.jsp',
                    type: 'get',
                    data: {inactiveToday: chkVal},
                    dataType: "text",
                    success: function (resData) {
                        if (resData != '')
                            location.reload();
                    }
                });
            });
        });
    </script>
</head>
<body>
<h2>팝업 메인 메세지</h2>
<%
    if (popupMode.equals("on")) {
%>
<div id="popup">
    <h2 align="center">공지사항 팝업입니다.</h2>
    <div align="right">
        <form name="popFrm">
            <input type="checkbox" id="inactiveToday" value="1"/>
            하루 동안 열지 않음
            <input type="button" value="닫기" id="closeBtn"/>
        </form>
    </div>
</div>
<%} %>
</body>
</html>
