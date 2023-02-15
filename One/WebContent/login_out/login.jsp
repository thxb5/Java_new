<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	Class.forName("org.mariadb.jdbc.Driver");
	try (
		Connection conn = DriverManager.getConnection (
				"jdbc:mariadb://localhost:3307/jspdb", "jsp", "1234");
		Statement stmt = conn.createStatement();
		
		//지정된 아이디와 비밀번호를 가진 레코드가 있는지 쿼리
		ResultSet rs = stmt.executeQuery(String.format(
				"select * from member where id='%s' and pw='%s'", 
				request.getParameter("id"), request.getParameter("pw")));
	) {
		//그런 레코드가 있으면, 세션 속성을 등록, 메인화면으로 이동
		if (rs.next()) {
			session.setAttribute("userId", rs.getString("id"));
			
			response.sendRedirect("login_main.jsp");
			return;
		}
	} catch(Exception e) {
		e.printStackTrace();
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		alert('아이디 또는 비밀번호가 틀립니다!');
		history.back();
	</script>
</body>
</html>