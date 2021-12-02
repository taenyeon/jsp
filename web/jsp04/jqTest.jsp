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
        $(document).ready(function (){
            $("button").click(function (){
                $("#display").html("<img src=../img/pear.png>");
            });
        });
    </script>
</head>
<body>
<style>
    #display{
        width: 200px;
        height: 200px;
        border: 3px double #333;
    }
    img{
        width: 200px;
        height: 200px;
    }
</style>
<h3>jqTest.jsp</h3>
<div id="display">내용변경</div>
<button>display</button>

</body>
</html>
