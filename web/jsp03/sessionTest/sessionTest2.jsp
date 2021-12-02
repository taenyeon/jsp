<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Insert title here</title>
</head>
<body>
<%
  String id = request.getParameter("id");
  String pass = request.getParameter("pass");

  session.setAttribute("id",id);
  session.setAttribute("h1","승마");
  session.setAttribute("h2","영화관람");
%>
id : <%=id%> <br>
pwd : <%=pass%> <br>

<%
//  response.sendRedirect("logout2.jsp");
%>

</body>
</html>