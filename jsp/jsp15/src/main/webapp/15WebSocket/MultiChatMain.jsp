<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-30
  Time: PM 4:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>
    function chatWinOpen() {
        var id = document.getElementById("chatId");
        if (id.value == "") {
            alert("대화명을 입력 후 채팅창을 열어주세요.");
            id.focus();
            return;
        }
        window.open("ChatWindow.jsp?chatId=" + id.value, "", "width=320,height=400");
        id.value = "";
    }
</script>
<h2>웹소켓 채팅 - 대화명 적용해서 채팅창 띄워주기</h2>
대화명 : <input type="text" id="chatId"/>
<button onclick="chatWinOpen();">채팅 참여</button>
</body>
</html>
