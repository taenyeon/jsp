<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<html>
<head>
    <title>Title</title>
    <style>
        h2,form{
            text-align: center;
            margin: 30px;
        }
    </style>
</head>
<body>
<h2>Join</h2>
<form action="joinPro.do">
    STUNO : <input type="text" name="stuno" id="stuno">
    STUCODE : <input type="password" name="stucode" id="stucode">
    <input type="submit" value="join">
</form>
</body>
</html>