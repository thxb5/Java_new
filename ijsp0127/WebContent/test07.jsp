<%@page import="java.util.Arrays"%>
<%@page import="test.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<Member> mlst = Arrays.asList(
			new Member("홍", 20),
			new Member("이", 54),
			new Member("유", 19),
			new Member("왕", 42)
			);
	request.setAttribute("members", mlst);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	${alst = members.stream().map(m -> m.age).toList()}<br/>
	${members.stream().map(m -> m.age).filter(x -> x >= 20).average().get() }
</body>
</html>