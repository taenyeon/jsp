<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/11/29
  Time: 3:05 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>표현식</h2>

<style>
    table{
        width: 500px;
        border: 2px solid red;
        border-collapse: collapse;
    }
    table tr td{
        border: 2px solid green;

    }
</style>

<%
  String[] str = {"jsp","java","javascript","html5"};
%>
<table>
    <tr>
        <td>번호</td>
        <td>값</td>
    </tr>
    <%
        for (int i=0; i<str.length;i++){


    %>
    <tr>
        <td><%=i+1%></td>
        <td><%=str[i]%></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
