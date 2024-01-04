<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//쿠키는 삭제가 없습니다(동일한 이름의 쿠키를 만료시간 0초)
    	Cookie c =new Cookie("aaa","true");
    	c.setMaxAge(0);
    	response.addCookie(c);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	쿠키 삭제완료
	<a href="cookie_get.jsp">쿠키확인하기</a>

</body>
</html>