package com.tech.controll.controllers;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public interface Controller {
    public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
