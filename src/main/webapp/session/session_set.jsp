<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//세션은 = 서버와 클라이언트에서 정보를 유지하기 위한 수단
    	//서버에서 생성하고, 서버에서 관리함	
    	session.setAttribute("user_id", "xxx123");
    	session.setAttribute("user_name", "이순신");
    	
    	//세션의 유효시간 1시간
    	session.setMaxInactiveInterval(3600);
    	
    	
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="session_get.jsp">세션확인하기</a>
</body>
</html>