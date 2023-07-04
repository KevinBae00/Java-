<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-07-04
  Time: PM 4:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<script type="text/javascript">
    var max =
    <%=request.getParameter("max")%>

    var
        url = 'https://api.odcloud.kr/api/15066537/v1/uddi:3fcefe25-765d-41f2-8540-8c6df41d54bd?page=1&perPage=' + max + '&serviceKey=WwrnCpfkz0GE8sjfmDQ7OEp24RrWJ6uyqFIdgdJQf3rXhvz76tJvktWPvQbT6YGt8XAtKuhjJ%2BI8Uw4zgBakFg%3D%3D'

    $.getJSON(url, function (data) {
        for (let i = 0; i < data.currentCount; i++) {
            let txt = "<tr>";
            txt += "<td>" + data.data[i].심야운영 + "</td>"
            txt += "<td>" + data.data[i].심야종료시간 + "</td>"
            txt += "<td>" + data.data[i].약국명 + "</td>"
            txt += "<td>" + data.data[i].전화번호 + "</td>"
            txt += "<td>" + data.data[i].주소 + "</td>"
            txt += "</tr>"
            $('table').append(txt);
        }
    });
</script>

<table border="1">
    <tr>
        <th>심야운영</th>
        <th>심야종료시간</th>
        <th>약국명</th>
        <th>전화번호</th>
        <th>주소</th>
    </tr>


</table>
</body>
</html>
