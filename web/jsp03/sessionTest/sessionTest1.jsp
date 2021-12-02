<%@ page language="java" contentType="text/ht b                                                                                                                                                                                              ml; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>sessionTest1 3-1</title>
</head>
<body>

<%
    String id=request.getParameter("id");
    String pass=request.getParameter("pass");
%>
<h2>sessionTest1.jsp</h2>
<%
    //id가 blue이고 pass가 1234이면
    if(id.equals("blue") && pass.equals("1234")){//로그인이성공하면
        //세션에 담아보기
        //session.setAttribute("세션의이름", 밸류값);
        session.setAttribute("id",id);
        session.setAttribute("h1","승마");
        session.setAttribute("h2","영화관람");
        //saveid란 이름으로 id(앞에서 전달된 blue)를 세션에 보관
        response.sendRedirect("sessionTestForm1.jsp");
    }


%>

id : <%=id %> <br />
pass : <%=pass %> <br />

</body>
</html>