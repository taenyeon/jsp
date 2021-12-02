<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/11/30
  Time: 4:33 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="lunchResult.jsp" method="post">
    아이디
    <input type="text" id="id" name="id" required>
    <br>
        비번
    <input type="password" id="pwd" name="pwd" required>
    <br>
    점심메뉴
    <select name="lunch" id="lunch">
        <option value="뚝불">뚝불</option>
        <option value="돈까스">돈까스</option>
        <option value="육비">육비</option>
        <option value="갈비탕" selected>갈비탕</option>
    </select>
    <br>
    <input type="submit" value="확인">
</form>

</body>
</html>
