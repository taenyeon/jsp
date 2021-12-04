
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%
        request.setCharacterEncoding("utf-8");
    %>
    <title>Title</title>
    <style>
        img{
            border: 0px;
            height: 100px;
        }
    </style>
</head>
<body>
<h3>green.jsp</h3>
<%
    String name = request.getParameter("name");
    String selectedColor = request.getParameter("color");
%>
<h2>포워딩된 페이지 - <%=selectedColor+".jsp"%></h2>
<b><%=name%></b>님이 선호한 색상은 <%=selectedColor%>이고 <br>
자기탐구와 내적 성장을 상징하는 색상입니다람쥐.

<img src="<%="img/"+selectedColor+".jpg"%>" alt="">
</body>
</html>
