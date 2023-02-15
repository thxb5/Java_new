package com.board.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.db.*;
import com.board.service.BoardService;

@WebServlet("/")
public class BoardController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private int num;
    private String writer;
    private String title;
    private String content;

    public BoardController() {
        super();
    }

    private void readParam(HttpServletRequest request) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        
        String tmp = request.getParameter("num");
        num = (tmp != null && tmp.length() > 0) 
                ? Integer.parseInt(tmp) : 0;
                
        writer  = request.getParameter("writer" );
        title   = request.getParameter("title"  );
        content = request.getParameter("content");
    }
    
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
                                 throws ServletException, IOException {
        String view = null;
        readParam(request);

        // URL에서 프로젝트 이름 뒷 부분의 문자열 얻어내기
        String uri = request.getRequestURI();
        String conPath = request.getContextPath();
        String com = uri.substring(conPath.length());

        // 주어진 URL에 따라 지정된 동작 수행
        if (com.equals("/list") || com.equals("/")) {
            request.setAttribute("msgList",
                    new BoardService().getMsgList());
            view = "list.jsp";

        } else if (com.equals("/view")){
            request.setAttribute("msg", new BoardService().getMsg(num));
            view = "view.jsp";

        } else if (com.equals("/write")){
            BoardDto dto = new BoardDto();
            String action = "insert";
            
            if (num > 0) {
                dto = new BoardService().getMsgForWrite(num);
                action = "update?num=" + num;
            }
            
            request.setAttribute("msg", dto);  
            request.setAttribute("action", action);         
            view = "write.jsp";
            
        } else if (com.equals("/insert")){
            try {
                new BoardService().writeMsg(writer, title, content);
                view = "redirect:list";
                
            } catch(Exception e) {
                request.setAttribute("errorMessage", e.getMessage());
                view = "errorBack.jsp";
            }

        } else if (com.equals("/update")){
            try {
                new BoardService().updateMsg(writer, title, content, num);
                view = "redirect:list";
                
            } catch(Exception e) {
                request.setAttribute("errorMessage", e.getMessage());
                view = "errorBack.jsp";
            }

        } else if (com.equals("/delete")){
            new BoardService().deleteMsg(num);
            view = "redirect:list";
        }

        // view에 담긴 문자열에 따라 포워딩 또는 리다이렉팅
        if (view.startsWith("redirect:")) {
            response.sendRedirect(view.substring(9));
        } else {
            request.getRequestDispatcher(view).forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
                                  throws ServletException, IOException {
        doGet(request, response);
    }
}