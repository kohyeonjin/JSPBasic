<%@page import="com.example.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Student student = (Student)request.getAttribute("student");
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=student.avg() %><br>
	<%=student.sum() %><br>
	<%=student.info() %>

	
</body>
</html>