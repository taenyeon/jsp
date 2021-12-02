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
<%
    if (session.getAttribute("name")==null){
%>
<body>
<form action="addrTest.jsp">
    name : <input type="text" id="name" name="name"> <br>
    id : <input type="text" id="id" name="id"> <br>
    pwd : <input type="password" id="pwd" name="pwd"> <br>
    addr : <input type="text" id="addr" name="addr"> <br>
    <input type="submit" value="login"> <br>
</form>
<%
    } else{
%>
<form action="addrLogout.jsp">
    <%=session.getAttribute("name")%> 님의 주소는 <%=session.getAttribute("addr")%>입니다. <br>
    <input type="submit" value="logout">
</form>
<%
    }
%>
</body>
</html>
