package com.login;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if(username.equals("admin") && password.equals("1234")) {

            HttpSession session = request.getSession();
            session.setAttribute("user", username);

            response.sendRedirect("welcome.jsp"); // redirect
        } else {
        	response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println("<h2>Invalid Login ❌</h2>");
        }
    }
}