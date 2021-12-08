<%@ page import="java.util.List" %>
<%@ page import="com.tech.db.Mission_getMember" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<html>
<head>
    <title>Title</title>
    <style>
        h2{
            text-align: center;
            margin: 30px;
        }
        table{
            text-align: center;
            margin: auto;
        }
        td {
            border: 1px solid #333333;
        }
    </style>
</head>
<body>
<h2>Info</h2>
<table>
<tr>
    <th>STUNO</th>
    <th>STUCODE</th>
    <th>SHAPASS</th>
    <th>BCPASS</th>
</tr>
<%
    List<Mission_getMember> members = (List<Mission_getMember>) request.getAttribute("members");
    for (Mission_getMember member:members){
        String stuno = member.getStuno();
        String stucode = member.getStucode();
        String shapass = member.getShapass();
        String bcpass = member.getBcpass();
%>
    <tr>
        <td><%=stuno%></td>
        <td><%=stucode%></td>
        <td><%=shapass%></td>
        <td><%=bcpass%></td>
    </tr>
<%
    }
%>
</table>
</body>
</html>

