<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.sun.corba.se.spi.orbutil.fsm.FSMImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Date date = new Date(); //날짜 가져오기
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd"); // 형식 지정
    String strdate = format.format(date);
%>
</body>
<h3>오늘의 날짜</h3>
today : <%=strdate%>
</html>
