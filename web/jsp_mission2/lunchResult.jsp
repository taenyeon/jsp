<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/11/30
  Time: 4:33 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    public String getLunchKor(String lunch){
        if (lunch.equals("뚝불")){
            lunch = "ddunk";
        }
        else if (lunch.equals("돈까스")){
            lunch = "don";
        }else if (lunch.equals("육비")){
            lunch = "wuk";
        }
        else if (lunch.equals("갈비탕")){
            lunch = "gal";
        }
        else{
            return "#";
        }
        return "../img/" + lunch + ".png";
    }
%>
    <%
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");
        String lunch = request.getParameter("lunch");
    %>

    아이디 : <%=id%>
<br>
비번 : <%=pwd%>
<br>
점심메뉴 : <%=lunch%>
<br>
<img src="<%=getLunchKor(lunch)%>" alt="" height="100px" width="100px">
<br>
<%=id%>님의 점심은 <%=lunch%>입니다.


</body>
</html>
