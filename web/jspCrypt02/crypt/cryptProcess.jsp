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
<h3>암호화 전상황</h3>
<jsp:include page="cryptProcessList.jsp" flush="false"/>
<table border="1px solid">
    <h3>Member</h3>
<%
    UpdateDBBean dbPro = UpdateDBBean.getInstance();
    dbPro.updateMember();
%>
    <h3>암호화 후상황</h3>
    <jsp:include page="cryptProcessList.jsp" flush="false"/>

</table>
</body>
</html>
