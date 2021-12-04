
<%@ page import="java.sql.SQLException" %>
<%@ page import="express.oracleEx" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    boolean connect = false;
    try {
        connect = oracleEx.Join();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<%
    if (connect){
%>
<h3>연결 성공</h3>
<%
    }else {
%>
<h3>연결 실패</h3>
<%
    }
%>
</body>
</html>
