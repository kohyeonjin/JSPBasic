<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//쿠키 = 서버와 클라이언트의 지속적인 관계를 유지하기 위한 수단
    	Cookie c = new Cookie("aaa","홍길동"); //키, 값
    	
    	//2.쿠키에 속성설정
    	c.setMaxAge(30); //수명 30초
    	
    	//3.response에 담는다
    	response.addCookie(c);
    	
    %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>쿠키만들기</h3>
	내가 만든 쿠키
	<a href="cookie_set.jsp">쿠키값 확인하기</a>

</body>
</html>