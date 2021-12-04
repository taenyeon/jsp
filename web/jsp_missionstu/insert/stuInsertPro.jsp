<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../stuHome.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
    <style>
        body{
            text-align: center;
            margin: 30px;
        }
    </style>

</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>


<%
    int sno = Integer.parseInt(request.getParameter("sno"));
    String sname = request.getParameter("sname");
    int sage = Integer.parseInt(request.getParameter("sage"));
    int sgrade = Integer.parseInt(request.getParameter("sgrade"));
    String sdepart1 = request.getParameter("sdepart1");
    String sdepart2 = request.getParameter("sdepart2");

//db연결
    Connection conn = null;
    PreparedStatement pstmt = null;
    String sql="";

    try {
        String url = "jdbc:oracle:thin:@192.168.35.108:1521:xe";
        String user = "hr";
        String pwd = "1234";
        String driver = "oracle.jdbc.driver.OracleDriver";

        Class.forName(driver);
        conn = DriverManager.getConnection(url, user, pwd);
        sql = "insert into STUDEPART values(?,?,?,?,?,?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1,sno);
        pstmt.setString(2,sname);
        pstmt.setInt(3,sage);
        pstmt.setInt(4,sgrade);
        pstmt.setString(5,sdepart1);
        pstmt.setString(6,sdepart2);

        pstmt.executeUpdate();
        out.println("작업을 완료했습니다.");

    }catch (Exception e){
        out.println("접속실패");
        e.printStackTrace();
        out.println("작업을 실패했습니다.");

    }finally {
        if (pstmt!=null) try{pstmt.close();}catch (Exception e){}
        if (conn!=null) try{conn.close();}catch (Exception e){}

    }
%>

</body>
</html>