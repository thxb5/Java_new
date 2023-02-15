package com.move.exam;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/")
public class MoveTest extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    public MoveTest() {
        super();
    }

    protected void doGet(HttpServletRequest request, 
                         HttpServletResponse response) 
                                 throws ServletException, IOException {
        
        String uri = request.getRequestURI();
        String conPath = request.getContextPath();
        String com = uri.substring(conPath.length());
        
        if (com.equals("/a") || com.equals("/")) {
            request.getRequestDispatcher("a.jsp")
                   .forward(request, response);
        } else if (com.equals("/b")){
            response.sendRedirect("b.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                                  throws ServletException, IOException {
        doGet(request, response);
    }
}