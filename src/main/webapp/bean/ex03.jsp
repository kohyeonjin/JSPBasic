<%@page import="com.example.bean.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	MemberVO vo = (MemberVO)request.getAttribute("vo");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=vo.getId() %><br>
	<%=vo.getName() %><br>
	<%=vo.getEmail() %>
</body>
</html>