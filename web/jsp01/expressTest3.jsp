<%@page import="express.dao" %>
<%@ page import="java.text.ParseException" %>
<%@ page import="express.dto" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
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
<body>
<h3>객실예약</h3>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>ReserveDate</td>
        <td>RoomNum</td>
    </tr>
    <%
        try {
            dao dao = new dao();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        for (int i=0;i<dao.getDtos().size(); i++){
        dto dto = dao.getDtos().get(i);

    %>
    <tr>
        <td><%=dto.getId()%></td>
        <td><%=dto.getName()%></td>
        <td><%=dto.getDate()%></td>
        <td><%=dto.getRoomNum()%></td>
    </tr>
<%
    }
%>
        </table>
</body>
</html>
