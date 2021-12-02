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
    if(session.getAttribute("id")==null){//로그인 미성공
%>
<form action="logHobbyTest.jsp" method="post">
    ID : <input type="text" name="id"><br>
    PWD : <input type="password" name="pwd"> <br>

    취미 : <select name="hobby" id="hobby">
        <option value="잠자기">잠자기</option>
        <option value="무협지보기">무협지보기</option>
        <option value="애니시청">애니시청</option>
        <option value="건프라">건프라</option>
    </select>
    <br>
    <input type="submit" value="로그인">
    <%
        }else{
    %>

    <form action="../sessionTest/logout.jsp">
        <%=session.getAttribute("id") %>님의 취미는 <%=session.getAttribute("hobby")%> 로그인성공<br/>
        <input type="submit" value="logout"/>
        <%
            }
        %>
</form>
</body>
</html>
