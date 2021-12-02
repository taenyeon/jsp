<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/11/30
  Time: 3:08 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>좋아하는 과일 선택</h2>
<form action="fruitsResult.jsp">

<label for="name">이름</label>
<input type="text" id="name" name="name" required>
<br>

<label for="age">나이</label>
<input type="text" id="age" name="age" required>
    <br>

<label for="fruits">과일선택</label>
<select name="fruits" id="fruits">
    <option value="사과">사과</option>
    <option value="바나나">바나나</option>
    <option value="딸기">딸기</option>
    <option value="포도">포도</option>
    <option value="감">감</option>
    <option value="귤">귤</option>
</select>
    <br>
<input type="submit" value="확인">
</form>
</body>
</html>
