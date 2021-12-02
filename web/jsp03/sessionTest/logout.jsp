<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>logout.jsp 3-3</title>
</head>
<body>
<h3>logout.jsp</h3>

<!-- 로그아웃처리 -->
<%
  session.invalidate();//세션모두제거
//session.removeAttribute("id");//id세션만제거
  response.sendRedirect("sessionTestForm1.jsp");

%>



</body>
</html>