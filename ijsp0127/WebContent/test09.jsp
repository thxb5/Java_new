<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	${[23,34,45].stream().min().orElse('없음') }<br/>
	${[].stream().max().orElse('없음') }<br/>
	${[].stream().max().orElseGet(() -> -1) }<br/>
	${mv = '*' ; ''}
	${[].stream().min().ifPresent(x -> (mv = x))}
	최소값: ${mv }
</body>
</html>