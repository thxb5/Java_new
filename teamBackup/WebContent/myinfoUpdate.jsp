<%@page import="user.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body {
  font: 90%/1.4 system-ui;
  margin: 0;
  font-family: sans-serif;
}

#wrapper {
border: 1px solid #aaa;
max-width: 800px; /*800이하 시 줄어듦*/
height: 100%;
margin: 0 auto;
padding: 0 auto;
}

table {
	margin: auto;
	border-collapse: collapse;
	border: 0;
}

th,
td {
  border: 1px solid #aaa;
  background-clip: padding-box;
  padding: 0.6rem;
  min-width: 6rem;
  margin: 0;
}

th {
	background: #f8f8f8;
	text-align: center;
}

td{
	text-align: left;
}

#readonly {
	border: 0;
	outline: none;
}

#button {
	text-align: center;
	margin-top: 50px;
}
#reset, #submit {
  width: 100px;
  height: 32px;
  font-size: 15px;
  border: 0;
  border-radius: 5px;
  outline: none;
  padding-left: 10px;
  background-color: rgb(233, 233, 233);
  margin: 0 20px;
}


</style>
</head>
<body>
<%
	
	
	//mypage.jsp에서 학번 받아오기
	int studentNum = Integer.parseInt(request.getParameter("studentNum"));
	//Dao 연결
	Dao dao = Dao.getInstance(); 
	//dao에서 selectUserOne메소드.(학번으로 유저 한명 정보 불러오기)
	User user = dao.selectUserOne(studentNum);
	
%>
	<div id="wrapper">
		<form action="myinfoUpdateAction.jsp" method="post">
			<table border="1">
				<tr><th>아이디</th><td><input type="text" name="userID" value="<%=user.getUserID() %>" readonly id="readonly"/></td></tr>
				<tr><th>학번</th><td><input type="text" name="studentNum" value="<%=user.getStudentNum() %>" readonly id="readonly"/></td></tr>
				<tr><th>닉네임</th><td><input type="text" name="nickName" value="<%=user.getNickName() %>"/></td></tr>
				<tr><th>비밀번호</th><td><input type="text" name="pw" value="<%=user.getPw() %>"/></td></tr>
				<tr><th>이메일</th><td><input type="text" name="email" value="<%=user.getEmail() %>"/></td></tr>
			
			</table>
			
			<div id="button">
				<input type="reset" name="초기화" id="reset"/>
				<input type="submit" name="저장" id="submit"/>
			</div>
		</form>
	</div>




</body>
</html>