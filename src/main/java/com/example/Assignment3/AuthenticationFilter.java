package com.example.Assignment3;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class AuthenticationFilter implements Filter {
    FilterConfig config;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.config = filterConfig;
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        PrintWriter out = servletResponse.getWriter();

        String password = servletRequest.getParameter("password");
        String s = config.getInitParameter("construction");

        if(s.equals("yes")){
            out.print("<h1>This page is under construction</h1>");
        }
        else if(password.equals("admin")){
            filterChain.doFilter(servletRequest, servletResponse);
        }
        else{
            out.print("<font color=red>Admin password is wrong.</font>");
            RequestDispatcher rd = servletRequest.getRequestDispatcher("login.jsp");
            rd.include(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {
    }
}
