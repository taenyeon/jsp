<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/11/30
  Time: 10:42 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>ifTestForm</title>
</head>
<body>
<h2>if else 좋아하는 색상</h2>

<form action="ifTest.jsp" method="get">
    <label for="name">이름</label>
    <input type="text" id="name"
           name="name" placeholder="홍길동" autofocus required /> <br />
    <label for="color">색상</label> <br />
    <select name="color" id="color">
    <option value="blue">파랑</option>
    <option value="green" selected>초록</option>
    <option value="red" >빨강</option>
    <option value="yellow">노랑</option>
    </select>

    <br />

    <input type="submit" value="확인" />

</form>

</body>
</html>