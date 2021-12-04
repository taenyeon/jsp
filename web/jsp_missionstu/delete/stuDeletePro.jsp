<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../stuHome.jsp"%>
<html>
<head>
    <style>
        body{
            text-align: center;
            margin: 30px;
        }
    </style>
    <title>Title</title>

    <%
        request.setCharacterEncoding("utf-8");
        int sno = Integer.parseInt(request.getParameter("sno"));
        String sname = request.getParameter("sname");

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
            sql = "select sno,sname from STUDEPART where sno =?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,sno);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                int rsno = rs.getInt("sno");
                String rsname = rs.getString("sname");
                if (sno == rsno && sname.equals(rsname)) {
                    sql = "delete from STUDEPART where sno=?";
                    pstmt = conn.prepareStatement(sql);
                    pstmt.setInt(1, sno);
                    pstmt.executeUpdate();
                    out.println("작업을 완료했습니다.");
                }
            }

            // 패스워드 일치 확인

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            out.println("작업을 실패했습니다.");
        }finally {
            if (pstmt != null) try {pstmt.close();} catch (Exception e) {e.printStackTrace();}
            if (conn != null) try {conn.close();} catch (Exception e) {e.printStackTrace();}
        }

    %>
</head>
<body>
<h3>deletePro</h3>
</body>
</html>
