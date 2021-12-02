<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/12/01
  Time: 4:52 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="addrLogout2.jsp">
    <%=request.getParameter("name")%> 님의 주소는 <%=request.getParameter("addr")%>입니다. <br>
    <%=request.getAttribute("game")%><br>
    <input type="submit" value="logout">
</form>
</body>
</html>
