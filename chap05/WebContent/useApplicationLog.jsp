<%@page import="java.util.Date"%>
<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head><title>로그 메시지 기록</title></head>
<body>

<%
	Date dd = new Date();
	application.log("로그 메시지 기록" + dd);
%>
로그 메시지를 기록합니다.

</body>
</html>