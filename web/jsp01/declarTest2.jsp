
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>선언문 예제</h2>
<%!
    String id = "blue";
    public String getID(){
        return id;
    }
%>
<h2>id 변수 : <%=id%></h2>
<h2>id 변수 : <%=getID()%></h2>
</body>
</html>
