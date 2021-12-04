<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <%
        request.setCharacterEncoding("utf-8");
        int sno = Integer.parseInt(request.getParameter("sno"));
        String sname = request.getParameter("sname");
        int sage = Integer.parseInt(request.getParameter("sage"));
        int sgrade = Integer.parseInt(request.getParameter("sgrade"));
        String sdepart1 = request.getParameter("sdepart1");
        String sdepart2 = request.getParameter("sdepart2");

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
            // 패스워드 일치 확인
            sql = "select sno,sname from STUDEPART where sno =?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,sno);
            rs = pstmt.executeQuery();

            if (rs.next()){
                int rsno = rs.getInt("sno");
                String rsname = rs.getString("sname");
                if ((sno == rsno) && sname.equals(rsname)){
                    sql = "update STUDEPART set SAGE=?,SGRADE=?,SDEPART1=?,SDEPART2=? where SNO = ?";
                    pstmt = conn.prepareStatement(sql);
                    pstmt.setInt(1,sage);
                    pstmt.setInt(2,sgrade);
                    pstmt.setString(3,sdepart1);
                    pstmt.setString(4,sdepart2);
                    pstmt.setInt(5,sno);
                    pstmt.executeUpdate();
                    out.println("성공");
                } else {
                    out.println("실패");
                }
            }

            // 패스워드가 일치하는 아이디 제거

        }catch (Exception e){
            out.println("접속실패");
            e.printStackTrace();

        }finally {
            if (pstmt!=null) try{pstmt.close();}catch (Exception e){}
            if (conn!=null) try{conn.close();}catch (Exception e){}

//            response.sendRedirect("../stuMain.jsp");
        }
    %>
</head>
<body>
<h3>deletePro</h3>
</body>
</html>
