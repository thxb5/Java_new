<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.name == 'bk' }">
			나온다		
		</c:when>
		<c:when test="${param.name == 'bk2' }">
			나온다2		
		</c:when>
		<c:otherwise>
			안나옴
		</c:otherwise>
	</c:choose>
</body>
</html>