<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>sessionTestForm3-2</title>
</head>
<body>
<h2>sessionTestForm1.jsp</h2>
<%
  if(session.getAttribute("id")==null){//로그인 미성공
%>
<form action="sessionTest2.jsp" method="post">
  아이디:
  <input type="text" id="id" name="id" placeholder="blue" /> <br />
  비밀번호:
  <input type="passward" id="pass" name="pass" /> <br />
  <input type="submit" value="login" /> <br />
</form>

<%
  out.println("sessionid :"+session.getAttribute("id"));
  out.println("sessionh1 :"+session.getAttribute("h1"));
  out.println("sessionh2 :"+session.getAttribute("h2"));

}else{//로그인성공
%>

<form action="logout.jsp">
  <%=session.getAttribute("id") %>님 로그인성공<br/>
  <input type="submit" value="logout"/>
</form>
<%
    out.println("sessionid :"+session.getAttribute("id"));
    out.println("sessionh1 :"+session.getAttribute("h1"));
    out.println("sessionh2 :"+session.getAttribute("h2"));
  }
%>
</body>
</html>