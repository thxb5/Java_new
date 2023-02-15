<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.util.Enumeration" %>
<html>
<head><title>application 기본 객체 속성 보기</title></head>
<body>
<%
	Enumeration<String> attrEnum = session.getAttributeNames();
	while(attrEnum.hasMoreElements() ) {
		String name = attrEnum.nextElement();
		Object value = application.getAttribute(name);
%>
session 속성 : <b><%= name %></b> = <%= value %> <br>
<%
	}
%>
</body>
</html>
