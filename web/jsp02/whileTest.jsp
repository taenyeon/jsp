<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/11/30
  Time: 2:52 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int number = Integer.parseInt(request.getParameter("number"));
    int num = Integer.parseInt(request.getParameter("num"));
    Long result = 1L;
    int count = 0;
    while (count <= num){
        result*=number;
                count++;
    }
%>

<%= result%>
</body>
</html>
