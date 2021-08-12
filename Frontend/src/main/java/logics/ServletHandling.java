/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logics;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author genyu
 */
public class ServletHandling {

    private RequestDispatcher rd;
    private HttpServletRequest request;
    private HttpServletResponse response;

    public ServletHandling(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    public void configPathJSP(int cas, String path, String page) throws ServletException, IOException {

        this.rd = request.getRequestDispatcher("/" + path + (page == null ? "index" : page) + ".jsp");

        System.out.println("/" + path + (page == null ? "index" : page) + ".jsp");

        this.rd.forward(this.request, this.response);

    }

    public RequestDispatcher getRd() {
        return rd;
    }

    public void setRd(RequestDispatcher rd) {
        this.rd = rd;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public HttpServletResponse getResponse() {
        return response;
    }

    public void setResponse(HttpServletResponse response) {
        this.response = response;
    }

}
