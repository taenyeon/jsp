<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/12/01
  Time: 4:37 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    String addr = request.getParameter("addr");

    session.setAttribute("name",name);
    session.setAttribute("addr",addr);

    response.sendRedirect("addrForm.jsp");
%>

</body>
</html>
