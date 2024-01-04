<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setCharacterEncoding("utf-8");
    	String name = request.getParameter("name");
    	String age = request.getParameter("age");
    	
    	int result = Integer.parseInt(age);
    	
    	if(result>=20){
    		response.sendRedirect("ex02_ok.jsp");
    	}else{
    		response.sendRedirect("ex02_no.jsp");
    	}
    	
    	//여기에 자바코드만 있다고? -> servlet으로 변경 가능
    %>
