<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/12/01
  Time: 4:10 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#b1").click(function () {
                $("#b2").text($("p").text());
            });
            $("#b2").click(function () {
                $("#display").html("<img src=../img/pear.png>");
            });
        });
    </script>
</head>
<body>

<h3>jqTest2.jsp</h3>
<p>이미지 표시</p>
<button id="b1">버튼에 레이블 변경</button>
<div id="display"></div>
<button id="b2">버튼</button>

</body>
</html>
