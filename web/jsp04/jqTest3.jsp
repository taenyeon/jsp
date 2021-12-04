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
    <style>
        p{
            width: 500px;
            height: 200px;
            background: green;
        }
    </style>
    <title>Title</title>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("p").mouseenter(function () {
                $("p").text("마우스 접근");
            });
            $("p").mouseleave(function () {
                $("p").text("마우스 떠남");
            });
        });
    </script>
</head>
<body>

<h3>jqTest3.jsp</h3>
<p>마우스 포인터를 이곳으로 이동하세요.</p>
<button id="b2">버튼</button>

</body>
</html>
