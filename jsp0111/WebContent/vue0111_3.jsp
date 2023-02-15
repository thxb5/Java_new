<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/vue@2.7.14/dist/vue.js"></script>
	<div id="app">
		<input v-model.lazy="myName" placeholder="이름" />
		<p>나는 {{myName}} 입니다.</p>
	</div>
	<script>
		new Vue({
			el: "#app",
			data: {
				myName: "안녕"
			}
		})
	</script>
</body>
</html>