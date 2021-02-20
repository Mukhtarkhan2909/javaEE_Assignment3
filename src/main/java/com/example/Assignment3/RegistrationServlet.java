package com.example.Assignment3;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "registration", value = "/registration")
public class RegistrationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String email = request.getParameter("email");
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");

        if(first_name.isEmpty() || last_name.isEmpty() || email.isEmpty() ||
                password1.isEmpty() || password2.isEmpty() ||
                !password1.equalsIgnoreCase(password2) ||
                address.isEmpty() || contact.isEmpty())
        {
            RequestDispatcher req = request.getRequestDispatcher("registration.jsp");
            req.include(request, response);
        }
        else
        {
            RequestDispatcher req = request.getRequestDispatcher("main.jsp");
            req.forward(request, response);
        }
    }
}
