<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Vue.js sample</title>
    <link rel="stylesheet" href="style.css" >
    <script src="https://cdn.jsdelivr.net/npm/vue@2.5.17/dist/vue.js"></script>
</head>
<body>
<div id="app">
    <p> {{ myText }} </p>
    <p> {{ myPrice }} </p>
    <p> {{ myTea }} </p>
    <p> {{$data}}</p>
    <hr>
    <li v-for="(item, key) in $data">
    {{key}} : {{item}}
    </li>
</div>
<script>
	var teaList = [
		{name: '커피', price: 3000},
		{name: '얼그레이', price: 2000},
		{name: '실론', price: 4000},
	];
    new Vue({
        el: '#app',
        data: {
        	myTea: teaList,
            myText: ['홍길동','홍길철','홍길순'],
            myPrice: 500
        }
    })
</script>
</body>
</html>