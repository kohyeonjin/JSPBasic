<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String date = request.getParameter("birth");
    String age = request.getParameter("age");
    
    String[] inter = request.getParameterValues("a1");
    String major = request.getParameter("b1");
    String region = request.getParameter("region");
    String content = request.getParameter("content");
    
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>넘어온값<h3>
	
	아이디:<%=id %><br>
	비밀번호:<%=pw %><br>
	생년월일:<%=date %><br>
	나이:<%=age %><br>
	취미:
	<% for(String s : inter){%>
		<%=s %>
	<%}%>
	<br>
	전공:<%=major %><br>
	지역:<%=region%><br>
	나를 소개하세요 :
	<%=content %><br>
	
	
	
	
	
</body>
</html>