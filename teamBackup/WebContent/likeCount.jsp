
<%@page import="user.Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int postNum = Integer.parseInt(request.getParameter("postNum"));
	
	Dao dao = Dao.getInstance();
	int total = dao.countLikePost(postNum);
%>
<%=total %>
