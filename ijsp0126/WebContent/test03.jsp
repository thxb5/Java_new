<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setAttribute("someVal", 2004);
		request.setAttribute("someVal2", "test");
		String aa = "test";
	%>
	<%= aa.compareTo("test") == 0 %><br/>
	<!-- compareTo는 빼는 역할을 한다. 0이 나오면 값이 같은 것,, -->
	<%= aa.equals("test") %><br/>
	${someVal == '2004'}<br/>
	${someVal2 == "test"}<br/>
</body>
</html>