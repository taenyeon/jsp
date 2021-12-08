package com.tech.controll.controllers;

import com.tech.crypt.work.BCrypt;
import com.tech.crypt.work.SHA256;
import com.tech.db.DBCon;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class Mission_MemberJoinProController implements Controller{
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Connection con = DBCon.getConnection();
        String stuno = request.getParameter("stuno");
        String stucode = request.getParameter("stucode");

        SHA256 sha = SHA256.getInsatnce();
        String shapass = sha.getSha256(stucode.getBytes());
        String bcpass = BCrypt.hashpw(shapass,BCrypt.gensalt());

        PreparedStatement pstmt = con.prepareStatement("insert into MEMBER6(stuno, stucode, shapass, bcpass) values (?,?,?,?)");
        pstmt.setString(1,stuno);
        pstmt.setString(2,stucode);
        pstmt.setString(3,shapass);
        pstmt.setString(4,bcpass);
        int update = pstmt.executeUpdate();
        boolean join = update != 0;

        HttpSession session = request.getSession(true);
        session.setAttribute("join",join);
        response.sendRedirect("complete.jsp");
    }
}
