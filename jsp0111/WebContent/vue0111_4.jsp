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
		<textarea v-model="myText"></textarea>
		<p>문장은 {{myText}} 입니다.</p>
		<p>문자수는 {{myText.length}} 자입니다.</p>
	</div>
	<script>
		new Vue({
			el: "#app",
			data: {
				myText: "안녕"
			}
		})
	</script>
</body>
</html>