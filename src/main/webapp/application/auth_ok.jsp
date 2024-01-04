<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	/*
    	세션에 저장된 auth와, 사용자가 입력한 code를 비교해서
    	이 값이 같다면, 인증여부를 저장하는 용도의 세션을 하나 생성을 하고
    	reserve 페이지로 이동합니다
    	
    	같지 않다면, 다시 인증페이지로 돌려보내주세요.
    	*/
    	
    	request.setCharacterEncoding("utf-8");
    
    	String code = request.getParameter("code");
    	
    	
    	if(session.getAttribute("auth").equals(code)){
    		session.setAttribute("ok", true);
    		response.sendRedirect("reserve.jsp");
    	}else{
    		response.sendRedirect("auth.jsp");
    	}
    	
  
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>