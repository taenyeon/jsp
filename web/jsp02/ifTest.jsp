<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/11/30
  Time: 10:48 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>ifTest.jsp</h3>
<%
    String name = request.getParameter("name");
    String color = request.getParameter("color");

%>
이름 : <%= name%> <br>
색상 : <%= color%> <br>

<img src="../img/<%= color+".png"%>" alt="">
<br>
<hr>
<div id="col">
</div>
<style>
    #col{
        width: 100px;
        height: 50px;
        background: <%=color%>;
    }
</style>
<br>
<%
    String strCol = "";
    if (color.equals("blue")){
        strCol="파랑";
    } else if (color.equals("red")){
        strCol="빨강";
    } else if (color.equals("yellow")){
        strCol="노랑";
    }else if (color.equals("green")){
        strCol="초록";
    }
%>
<h3><%=name%>님은 <%=strCol%>색을 선택하였습니다. </h3>
</body>
</html>
