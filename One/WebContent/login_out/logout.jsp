<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<%
		session.removeAttribute("userId");
		session.removeAttribute("userName");
		
		response.sendRedirect("login_main.jsp"); //로그인 메인 페이지로
	%>
</body>
</html>