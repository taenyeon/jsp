package com.tech.controll.controllers;

import com.tech.db.DBCon;
import com.tech.db.Mission_getMember;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Mission_MemberInfoProController implements Controller{
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<Mission_getMember> members = new ArrayList<>();
        HttpSession session = request.getSession(false);
        String login = (String) session.getAttribute("login");
        Connection conn = DBCon.getConnection();
        PreparedStatement pstmt = conn.prepareStatement("select * from MEMBER6 where STUNO = ?");
        pstmt.setString(1,login);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()){
            Mission_getMember member = new Mission_getMember();
            member.setStuno(rs.getString("STUNO"));
            member.setStucode(rs.getString("STUCODE"));
            member.setShapass(rs.getString("SHAPASS"));
            member.setBcpass(rs.getString("BCPASS"));
            members.add(member);
        }
        request.setAttribute("members",members);
        RequestDispatcher dispatcher = request.getRequestDispatcher("info.jsp");
        dispatcher.forward(request,response);

    }
}
