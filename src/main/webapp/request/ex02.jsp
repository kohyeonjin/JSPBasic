<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    //이전 화면에서 넘어온 값을 얻을대는 getParameter("이름")
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String[] inter = request.getParameterValues("inter");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>여기는 ex02페이지</h3>
	
	넘어온 아이디:<%=id %><br>
	넘어온 비밀번호:<%=pw %><br>
	관심분야:
	<% for(int i=0; i<inter.length;i++){ %>
	<%=inter[i] %>
	<%} %>
</body>
</html>