/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logics.ServletHandling;

/**
 *
 * @author genyu
 */
public class TeamControllerServlet extends HttpServlet {

    private static String path = "pages/teamcontrollers/";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String page = request.getParameter("p");
        ServletHandling servletLogic = new ServletHandling(request, response);
        servletLogic.configPathJSP(0, path, page);

    }
}
