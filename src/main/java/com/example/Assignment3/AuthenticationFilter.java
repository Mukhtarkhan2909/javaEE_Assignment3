package com.example.Assignment3;

import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;

public class AuthenticationFilter implements Filter {
    FilterConfig config;

    @Override
    public void init(FilterConfig filterConfig) {
        this.config = filterConfig;
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        PrintWriter out = servletResponse.getWriter();

        String s = config.getInitParameter("construction");

        if(s.equals("yes")){
            out.print("<font color=red>This page is not ready</font>");
            RequestDispatcher rd = servletRequest.getRequestDispatcher("login.jsp");
            rd.include(servletRequest, servletResponse);
        }
        else {
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {
    }
}
