
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="requestTest.jsp" method="post">
    <label for="name">이름</label>
    <input type="text" id="name" name="name" placeholder="이름" required autofocus> <br>
    <label for="age">나이</label>
    <input type="number" id="age" name="age" placeholder="나이" min="20" max="99" required> <br>
    <fieldset>
        <legend>성별</legend>
        <input type="radio" id="gender" name="gender" value="m" checked>
        <label for="gender">남</label>
        <input type="radio" id="gender" name="gender" value="f">
        <label for="gender">여</label>
    </fieldset>
    <label for="hobby">취미</label>
    <select name="hobby" id="hobby">
        <option value="잠자기">잠자기</option>
        <option value="무협지보기">무협지보기</option>
        <option value="애니시청">애니시청</option>
        <option value="건프라">건프라</option>
    </select>
    <br>
    <input type="submit" value="확인"> <br>
</form>
</body>
</html>
