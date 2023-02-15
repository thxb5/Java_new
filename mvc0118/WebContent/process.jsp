<%@page import="jdbc.Dao"%>
<%@page import="jdbc.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>  
<jsp:setProperty property="*" name="mi"/>	
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	입력 완료.
	<%
		Emp emp = new Emp();
				
		Dao dao = Dao.getInstance();
		
		dao.insertEmpTemp(emp);
	%>
</body>
</html>