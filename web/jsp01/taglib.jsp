
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>페이지 스크립트 요소 정리</h2>

<%--선언문 : <%! %> -전역변수 선언--%>
<%--스크립트릿(코드 블락)(scriptlet) : <% %> - 자바 프로그래밍--%>
<%--표현식 : <%= %> -화면에 출력할 내용--%>

<%
    String str1 = "게임 ID : "+ str2;
%>
<%
    String username = str2;
%>
<%!
    String str2 = "blue";
%>
접속자 : <%= str1%> <br>
접속자2 : <%= str2%>
</body>
</html>
