<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/12/01
  Time: 12:51 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String pwd = request.getParameter("pass");
    String hobby = request.getParameter("hobby");

    session.setAttribute("id",id);
    session.setAttribute("hobby",hobby);
    response.sendRedirect("logHobbyForm.jsp");
%>
</body>
</html>
