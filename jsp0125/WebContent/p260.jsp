<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String ttt = "2004";
	int num = 2004;
%>
<c:set var="ttt" value="<%=ttt %>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	${ttt}<br/>
	${ttt == '2004'}<br/><br/>
	
	${ 3 lt 5 }<br/>
	<%= 3/2 %><br/>
</body>
</html>