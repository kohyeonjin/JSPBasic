<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>if문 확인하기</h3>
	
	<form action="jstl_if.jsp" method="post">
		이름:<input type="text" name="name"><br>
		나이:<input type="number" name="age"><br>
		<input type="submit" value="확인">
	</form>
	
	<hr>
	
	<h3>choose문 확인하기</h3>
	
	<form action="jstl_choose.jsp" method="post">
		이름:<input type="text" name="name"><br>
		나이:<input type="number" name="age"><br>
		점수:<input type="number" name="score"><br>
		<input type="submit" value="확인">
	</form>
	
	

</body>
</html>