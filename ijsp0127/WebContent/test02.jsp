<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Map<String, String> map1 = new HashMap<>();
	map1.put("code1", "코드1");
	map1.put("code2", "코드2"); 
	map1.put("code3", "코드3"); 
	request.setAttribute("map", map1);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	${map.entrySet().stream()
	.map(n -> n.key += "&nbsp;" += n.value).toList()}
</body>
</html>