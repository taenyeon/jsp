<%@ page import="java.sql.Timestamp" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" session="true" buffer="8kb" autoFlush="true" isThreadSafe="true" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
session 세션 사용여부
autoFlush 버퍼가 차이면 자동 비우기
isThreadSafe 멀티 쓰레드를 사용할 수 있도록 지정
--%>
<%--html 영역--%>
<%
    /*코드블럭 자바 영역*/
    Timestamp now = new Timestamp(System.currentTimeMillis());
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    String strDate = format.format(now);
    String name = "홍길동";
%>
오늘은 <%=strDate%>입니다.
이름은 <%=name%>입니다.
</body>
</html>
