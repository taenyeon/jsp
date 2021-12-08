package com.tech.controll.controllers;

import com.tech.crypt.work.BCrypt;
import com.tech.crypt.work.SHA256;
import com.tech.db.DBCon;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class MemberJoinProcController implements Controller {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Connection con = DBCon.getConnection();
            String id = request.getParameter("id");
            String pwd = request.getParameter("pwd");
            String name = request.getParameter("name");
            String addr = request.getParameter("addr");

            SHA256 sha = SHA256.getInsatnce();
            String shPwd = sha.getSha256(pwd.getBytes());
//            String shPwd = "26AE784D194A5760464348329AF4EB9FCA2B27BBF823742C968A61543E3A1153";
//            String bcPwd = BCrypt.hashpw(shPwd,BCrypt.gensalt());
//            System.out.println("인증확인1 : " + BCrypt.checkpw(shPwd,bcPwd));
//            System.out.println("인증확인2 : " + BCrypt.checkpw("26AE784D194A576046",bcPwd));

            String bcPwd = BCrypt.hashpw(shPwd,BCrypt.gensalt());


            PreparedStatement pstmt = con.prepareStatement("insert into MEMBER5(id,pwd,SHPWD,BCPWD) values (?,?,?,?)");
            pstmt.setString(1,id);
            pstmt.setString(2,pwd);
            pstmt.setString(3,shPwd);
            pstmt.setString(4,bcPwd);
            pstmt.executeUpdate();

            response.sendRedirect("index.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
