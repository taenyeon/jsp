<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/12/07
  Time: 11:07 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>joinform.jsp</h3>
<form action="memberjoinproc.do" method="post">
    id : <input type="text" name="id"> <br>
    pwd : <input type="text" name="pwd"> <br>
    name : <input type="text" name="name"> <br>
    addr : <input type="text" name="addr"> <br>

    <input type="submit" value="join">
</form>

</body>
</html>
