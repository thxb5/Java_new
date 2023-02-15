<%@page import="ijsp0126.Score"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Score sc = new Score("홍길동", 98);
	request.setAttribute("sco", sc);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	${sco.getName()}<br/>
	${sco.name}<br/>
	${sco.kor}<br/>
</body>
</html>