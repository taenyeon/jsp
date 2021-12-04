<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        request.setCharacterEncoding("utf-8");
    %>
</head>
<body>
<h3>forwardParamTo.jsp</h3>
<%
   String name =request.getParameter("name");
   String selectedColor =  request.getParameter("color");
   String selectPage = selectedColor +".jsp";
%>
<jsp:forward page="<%=selectPage%>">
<jsp:param name="color" value="<%=selectedColor%>"/>
    <jsp:param name="name" value="<%=name%>"/>
</jsp:forward>
</body>
</html>
