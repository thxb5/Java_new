<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List<String> mlst = new ArrayList<>();
	mlst.add("김"); mlst.add("이"); mlst.add("박");
	
	Map<String, Object> mapData = new HashMap<>();
	mapData.put("name", "홍");
	mapData.put("today", new Date());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="intArray" value="<%= new int[] {1,2,3,4,5} %>"/>
	<c:forEach var="i" items="${intArray}" begin="2" end="4" varStatus="dd">
		${i} ${dd.index} ${dd.count }<br/>
	</c:forEach>
	<c:forEach var="ss" items="<%=mlst %>">
		${ss}<br/>
	</c:forEach>
	<c:set var="map" value="<%=mapData %>"/>
	<c:forEach var="i" items="${map }">
		${i.key } ${i.value }<br/>
	</c:forEach>
</body>
</html>