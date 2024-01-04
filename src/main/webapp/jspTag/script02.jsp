<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int age = 10;
		String name = "홍길동";
		
	%>

	<%-- 
	<%
		out.println(age + "세 입니다");
	%> 
	--%>
	
	<%=age%>세 입니다
	<%=name %>님의 나이는 <%=age %>세 입니다
	
	<br>
	<hr>
	<h3>구구단 3단을 표현식을 이용해서 출력</h3>
	
	<%for(int i=1; i<=9; i++){%>
		3 x <%=i %> = <%=3*i %><br>
	<%}%>


	<hr>
	<h3> 반복문으로 체크박스에 숫자번호를 붙여서 20개 생성</h3>
	<%for(int i=1; i<=20; i++){%>
		<input type="checkbox"><%=i%>
	<%}%>
	
	<hr>
	<h3>1~81까지 숫자를 테이블에 표현(중첩반복)</h3>
	
	<table border="1">
	<%int num =1; %>
	<%for(int i=1; i<=9; i++){%>
		<tr>
		<%for(int j=1; j<=9; j++){%>
			<td>
			<%=num++%>
			</td>
			</tr>
		<%}%>
	<%}%>
	</table>
	
</body>
</html>