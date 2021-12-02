<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/11/30
  Time: 4:05 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String info = application.getServerInfo();
  String path = application.getRealPath("/");
  application.log("로그기록" + info);
%>

웹컨테이너 버전 이름 :  <%=info%> <br>
웹어플리케이션 로컬 시스템 경로 : <%=path%>
</body>
</html>
