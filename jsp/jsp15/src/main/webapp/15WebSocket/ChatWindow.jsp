<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-30
  Time: PM 4:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        /*대화창 스타일 지정*/
        #chatWindow {
            border: 1px solid black;
            width: 270px;
            height: 310px;
            overflow: scroll;
            padding: 5px;
        }

        #chatMessage {
            width: 236px;
            height: 30px;
        }

        #sendBtn {
            height: 30px;
            position: relative;
            top: 2px;
            left: -2px;
        }

        #closeBtn {
            margin-bottom: 3px;
            position: relative;
            top: 2px;
            left: -2px;
        }

        #chatId {
            width: 158px;
            height: 24px;
            border: 1px solid #AAAAAA;
            background-color: #EEEEEE;
        }

        .myMsg {
            text-align: right;
        }
    </style>
</head>
<body>
대화명 : <input type="text" id="chatId" value="${ param.chatId }" readonly/>
<button id="closeBtn" onclick="disconnect();">채팅 종료</button>
<div id="chatWindow"></div>
<div>
    <input type="text" id="chatMessage" onkeyup="enterKey();">
    <button id="sendBtn" onclick="sendMessage();">전송</button>
</div>

<script>
    var webSocket = new WebSocket("<%=application.getInitParameter("CHAT_ADDR")%>" / ChatingServer);
    var chatWindow, chatMessage, chatId;

    window.onload = function () {
        chatWindow = document.getElementById("chatWindow");
        chatMessage = document.getElementById("chatMessage");
        chatId = document.getElementById("chatId").value;
    }

    //     메세지 전송

    //     서버와의 연결 종료

    //     엔터 키 입력 처리

    //     웹소켓 서버에 연결됐을 때 실행

    //     웹소켓이 닫혔을 때(서버와의 연결이 끊겼을 때) 실행

    //     에러 발생 시 실행

    //     메세지를 받았을 때 실행
    
</script>
</body>
</html>
