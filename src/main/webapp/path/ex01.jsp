<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 
		상대경로 : 현재위치에서 찾아가는 방식
		절대경로 : 전체경로를 다 적어서 찾아가는 방식
	 -->
	<h3>ex01페이지</h3>
	
	<a href = "ex02.jsp">ex02(상대경로)</a>
	<a href = "http://localhost:8181/JSPBasic/path/ex02.jsp">ex02(절대경로)</a>
	<a href = "/JSPBasic/path/ex02.jsp">ex02(절대경로2)</a>
</body>
</html>