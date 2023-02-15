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
	<c:set var="aa" value="qq" />
	<c:set var="bb" value="${param.ddd}"/>
	<c:if test="${aa == 'qq'}">
		나온다
	</c:if>
	<c:if test="${bb == 'mm'}">
		나온다2
	</c:if>
	<c:if test="${param.vv > 18}">
		나온다3
	</c:if>
</body>
</html>