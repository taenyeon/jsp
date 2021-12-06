<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../stuHome.jsp"%>
<html>
<head>
    <title>Title</title>
    <style>
        form{
            text-align: center;
            margin: 20px;
        }
    </style>
</head>
<body>
<form action="stuDeletePro.jsp" method="post">
<h3>deleteForm</h3>
    no : <input type="text" id="sno" name="sno"/> <br>
    name : <input type="text" id="sname" name="sname"/> <br>
    <input type="submit" value="삭제">
</form>
</body>
</html>
