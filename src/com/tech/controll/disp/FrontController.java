package com.tech.controll.disp;

import com.tech.controll.controllers.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class FrontController extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String requestURI = req.getRequestURI();
Controller controller = null;
        if (requestURI.equals("/jspCrypt_mission/joinForm.do")){
            controller = new Mission_MemberJoinController();
        }
        if (requestURI.equals("/jspCrypt_mission/joinPro.do")){
            controller = new Mission_MemberJoinProController();
        }
        if (requestURI.equals("/jspCrypt_mission/loginForm.do")){
            controller = new Mission_MemberLoginController();
        }
        if (requestURI.equals("/jspCrypt_mission/loginPro.do")){
            controller = new Mission_MemberLoginProController();
        }
        if (requestURI.equals("/jspCrypt_mission/logoutPro.do")){
            controller = new Mission_MemberLogoutProController();
        }
        if (requestURI.equals("/jspCrypt_mission/userInfo.do")){
            controller = new Mission_MemberInfoProController();
        }
        try {
            controller.execute(req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
