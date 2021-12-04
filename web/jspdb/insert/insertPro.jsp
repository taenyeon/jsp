<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>InsertPro 3번째</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>

<h3>InsertPro</h3>
<h4>db에 insert 작업진행</h4>

<%
String id=request.getParameter("id");
String pw=request.getParameter("pw");
String name=request.getParameter("name");
String addr=request.getParameter("addr");

//db연결
    Connection conn = null;
    PreparedStatement pstmt = null;
    String sql="";

    try {
        String url = "jdbc:oracle:thin:@192.168.1.156:1521:xe";
        String user = "hr";
        String pwd = "1234";
        String driver = "oracle.jdbc.driver.OracleDriver";

        Class.forName(driver);
        conn = DriverManager.getConnection(url, user, pwd);
        sql = "insert into member1 values(?,?,?,?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,id);
        pstmt.setString(2,pw);
        pstmt.setString(3,name);
        pstmt.setString(4,addr);

        pstmt.executeUpdate();

    }catch (Exception e){
        out.println("접속실패");
        e.printStackTrace();

    }finally {
        if (pstmt!=null) try{pstmt.close();}catch (Exception e){}
        if (conn!=null) try{conn.close();}catch (Exception e){}

        response.sendRedirect("../jspdbMain.jsp");
    }
%>

</body>
</html>