<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../stuHome.jsp"%>
<html>
<head>
    <title>Title</title>
    <style>
        body{
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
<h3>ListForm</h3>
    <%
        Connection conn = null;
        PreparedStatement pstmt = null;
        String sql="";
        ResultSet rs = null;

        try {
            String url = "jdbc:oracle:thin:@192.168.35.108:1521:xe";
            String user = "hr";
            String pwd = "1234";
            String driver = "oracle.jdbc.driver.OracleDriver";

            Class.forName(driver);
            conn = DriverManager.getConnection(url, user, pwd);
            sql = "select * from studepart";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

                out.print("<table>");
            out.print("<tr>");
                out.print("<th>sno</th>");
            out.print("<th>sname</th>");
            out.print("<th>sage</th>");
            out.print("<th>sgrade</th>");
            out.print("<th>sdepart1</th>");
            out.print("<th>sdepart2</th>");
            out.print("</tr>");
            while (rs.next()) {
                out.print("<tr>");
                out.print("<td>"+rs.getInt("sno")+"</td>");
                out.print("<td>"+rs.getString("sname")+"</td>");
                out.print("<td>"+rs.getInt("sage")+"</td>");
                out.print("<td>"+rs.getInt("sgrade")+"</td>");
                out.print("<td>"+rs.getString("sdepart1")+"</td>");
                out.print("<td>"+rs.getString("sdepart2")+"</td>");
                out.print("</tr>");
                }
            out.print("</table>");


        }catch (Exception e){
            out.println("접속실패");
            e.printStackTrace();

        }finally {
            if (pstmt!=null) try{pstmt.close();}catch (Exception e){}
            if (conn!=null) try{conn.close();}catch (Exception e){}

        }
    %>
</body>
</html>
