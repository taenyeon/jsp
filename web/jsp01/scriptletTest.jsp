
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>스크립트릿</h2>
<%
    int val = 6;

    if (val>5){
        String str ="변수 val가 5보다 크다";

%>
<%=str%>
<%
    }else {

%>
변수 val는 5보다 크지 않다.
<%
    }
%>
</body>
</html>
