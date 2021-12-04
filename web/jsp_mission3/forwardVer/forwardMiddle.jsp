<%@ page import="com.sun.corba.se.spi.protocol.RequestDispatcherDefault" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setAttribute("game","lol");
    RequestDispatcher dp = request.getRequestDispatcher("forwardResult.jsp");
    dp.forward(request,response);
%>
</body>
</html>
