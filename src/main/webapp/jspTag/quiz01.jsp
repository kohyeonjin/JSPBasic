<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    /*
    	1.정수를 저장하는 HashSet을 생성합니다.
    	2.1~45까지 랜덤하게 생성되는 로또번호를 set에 저장
    	3.화면에 출력 "이번 번호는 x번 입니다" 반복으로 출력
    	4. header,footer는 include 해주세요
    */
   
	 Set<Integer> set = new HashSet<>();
		for(int i=1; i<=6; i++){
		int ranNum = ((int)(Math.random() * 45)) + 1;
		set.add(ranNum);
		}
	Iterator<Integer> it = set.iterator();
    %>
    
		<%@include file="include_header.jsp" %>
	
		<%
			while(it.hasNext()){
			int n = it.next(); %>
			이번 번호는 <%=n %> 번 입니다.<br>
		<%}%>
			
		<%@include file="include_footer.jsp" %>
	