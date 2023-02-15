<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie ck = new Cookie("name", "test");
	response.addCookie(ck);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	쿠키 생성
	<%=ck.getName()%>: <%=ck.getValue()%>
</body>
</html>