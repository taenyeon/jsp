<%@ page import="com.tech.crypt.UpdateDataBean" %>
<%@ page import="java.util.List" %>
<%@ page import="com.tech.crypt.UpdateDBBean" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
    <style>
        h3{
            text-align: center;
            margin: 20px;
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
<table border="1px solid">
    <h3>Member</h3>
<%
    UpdateDBBean dbPro = UpdateDBBean.getInstance();
    List<UpdateDataBean> members = dbPro.getMembers();

    for(UpdateDataBean dataBean : members){
        String id = dataBean.getId();
        String pwd = dataBean.getPwd();
%>
    <tr>
        <td><%=id%></td>
        <td><%=pwd%></td>
    </tr>
<%
    }
%>

</table>
</body>
</html>
