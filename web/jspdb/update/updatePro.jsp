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
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        String name = request.getParameter("name");
        String addr = request.getParameter("addr");

        Connection conn = null;
        PreparedStatement pstmt = null;
        String sql="";
        ResultSet rs = null;
        String messege = "";
        try {
            String url = "jdbc:oracle:thin:@192.168.1.156:1521:xe";
            String user = "hr";
            String pwd = "1234";
            String driver = "oracle.jdbc.driver.OracleDriver";

            Class.forName(driver);
            conn = DriverManager.getConnection(url, user, pwd);
            // 패스워드 일치 확인
            sql = "select id,pw from member1 where id =?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,id);
            rs = pstmt.executeQuery();

            if (rs.next()){
                String rid = rs.getString("id");
                String rpw = rs.getString("pw");
                if (id.equals(rid) && pw.equals(rpw)){
                    sql = "update member1 set NAME=?,ADDR=? where id = ?";
                    pstmt = conn.prepareStatement(sql);
                    pstmt.setString(1,name);
                    pstmt.setString(2,addr);
                    pstmt.setString(3,id);
                    pstmt.executeUpdate();
                %>
    <script>alert("수정완료")</script>
                <%
                } else {
                }
            }

            // 패스워드가 일치하는 아이디 제거

        }catch (Exception e){
            out.println("접속실패");
            e.printStackTrace();

        }finally {
            if (pstmt!=null) try{pstmt.close();}catch (Exception e){}
            if (conn!=null) try{conn.close();}catch (Exception e){}

            response.sendRedirect("../stuMain.jsp");
        }
    %>
</head>
<body>
<h3>deletePro</h3>
</body>
</html>
