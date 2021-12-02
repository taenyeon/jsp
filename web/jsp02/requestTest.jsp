<%@ page import="java.net.Inet4Address" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    request.setCharacterEncoding("utf-8");
%>
<body>
<%

    String name = request.getParameter("name");
    int age = Integer.parseInt(request.getParameter("age"));
    String gender = "";
    if (request.getParameter("gender").equals("f")){
        gender = "여성";
    } else if (request.getParameter("gender").equals("m")){
        gender = "남성";
    }
    String hobby = request.getParameter("hobby");

    String uri = request.getRequestURI();
    StringBuffer url = request.getRequestURL();
    String ctxPath = request.getContextPath();
    String mod = request.getMethod();
    String addr6 = request.getRemoteAddr();
    String addr4 = Inet4Address.getLocalHost().getHostAddress();

%>

이름 : <%= name%> <br>
나이 : <%= age%> <br>
성별 : <%= gender%> <br>
취미 : <%= hobby%> <br>
uri : <%= uri%> <br>
url : <%= url%> <br>
ctx : <%= ctxPath%> <br>
mod : <%= mod%> <br>
addr6 : <%= addr6%> <br>
addr4 : <%= addr4%> <br>

</body>
</html>
