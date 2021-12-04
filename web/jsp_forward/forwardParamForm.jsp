
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<h3>forwardParamForm.jsp</h3>
<form action="forwardParamTo.jsp" method="post">
    <dl>
        <dd>
            <label for="name">이름</label>
            <input type="text" id="name" name="name">
        </dd>
        <dd>
            <label for="color">색상 선택</label>
            <select name="color" id="color">
            <option value="blue" selected>파랑</option>
            <option value="green">초록</option>
            <option value="red">빨강</option>
            <option value="yellow">노랑</option>
            </select>
        </dd>
        <dd>
            <input type="submit" value="확인">
        </dd>
    </dl>
</form>
</body>
</html>
