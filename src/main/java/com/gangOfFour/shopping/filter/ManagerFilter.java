package com.gangOfFour.shopping.filter;
import javax.servlet.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


public class ManagerFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException { }
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request=(HttpServletRequest)servletRequest;
        HttpServletResponse response=(HttpServletResponse)servletResponse;
        HttpSession seessin= request.getSession();
        Object user= seessin.getAttribute("userLogin");
        if(user!=null){
            filterChain.doFilter(request,response);
        }else{
            seessin.setAttribute("hint","请先登陆管理员账户");
            response.sendRedirect("../login1.jsp");
        }
    }

    @Override
    public void destroy() {}
}
