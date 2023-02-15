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
		<p>이름: <input v-model.lazy="myName" placeholder="홍길동" /></p>
		<p>좋아하는 색 :</p>
		<label><input type="radio" value="red" v-model="picked" />적</label><br/>
		<label><input type="radio" value="green" v-model="picked" />녹</label><br/>
		<label><input type="radio" value="blue" v-model="picked" />청</label><br/>
	<p v-bind:style="{color: picked}">내 이름은 {{myName}} 이고, 좋아하는 색은 {{picked}} 입니다.</p>
	</div>
	<script>
		new Vue({
			el: "#app",
			data: { 
				myName: "홍길동",
				picked: "green"
			}
		})
	</script>
</body>
</html>