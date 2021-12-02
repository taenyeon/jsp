<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name =  request.getParameter("name");
    int age =  Integer.parseInt(request.getParameter("age"));
    String fruits =  request.getParameter("fruits");
    String fruitsLink = getfruits(fruits);
%>
<%!
    public String getfruits(String fruits){
        if (fruits.equals("사과")){
            fruits = "apple";
        }
        else if (fruits.equals("바나나")){
            fruits = "banana";
        }else{
            return "#";
        }
        return "../img/" + fruits + ".png";
    }
%>

이름 : <%=name%> <br>
나이 : <%=age%>   <br>
선택한 과일 : <%=fruits%> <br>
<img src="<%=fruitsLink%>" alt="">

</body>
</html>
