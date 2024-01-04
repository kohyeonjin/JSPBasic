<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String kor = request.getParameter("kor");
    String eng = request.getParameter("eng");
    String math = request.getParameter("math");
    
    int avg = (Integer.parseInt(kor) + Integer.parseInt(eng) + Integer.parseInt(math)) / 3;
    
    
    if(avg >= 60){
    	response.sendRedirect("quiz01_suc.jsp");
    }else {
    	response.sendRedirect("quiz01_fail.jsp");
    }
    %>
