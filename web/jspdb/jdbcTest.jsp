<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jdbcTest 1번째</title>
</head>
<body>
<h3>jdbcTest.jsp</h3>

<%
Connection conn=null; //컨트롤스페이스하면 위에 임포트 자동생성
String driver="oracle.jdbc.driver.OracleDriver";
   String url = "jdbc:oracle:thin:@192.168.1.156:1521:xe";

boolean connect=false;

try{
   Class.forName(driver);
   conn=DriverManager.getConnection(url, "hr", "1234");
   connect=true;
   
}catch(Exception e){
   connect=false;
   e.printStackTrace();
}

%>

<%
if(connect){
%>
<h3>db연결성공</h3>
<%
}else{
%>
<h3>db연결실패</h3>
<%} %>
</body>
</html>