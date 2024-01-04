<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	

	<%
		int sum = 0;
		for(int i=1; i<=10; i++){
			sum += i;
		}
	%>
	결과 : <%=sum%>
	<hr>
	
	<c:set var="total" value="0"/>
	<c:forEach var="i" begin="1" end="10" step="1">
		<c:set var = "total" value ="${total + i}" />
	</c:forEach>
	
	결과 : ${total }
	
	
	<hr/>
	
	<h3>구구단 2단~9단까지 jstl로 출력</h3>

	<c:forEach var="gu" begin="2" end="9" step="1">
	<c:forEach var="i" begin="1" end="9" step="1">
		${gu} * ${i } = ${gu * i}<br>
	</c:forEach>
	</c:forEach>
	
	
	<h3>향상된 포문 item(배열 or 리스트)</h3>
	
	

	
	<%
		int[] arr = new int[] {1,2,3,4,5};
		for(int i : arr){
			out.println(i);
		}
	%>
	
	<br>
	<c:set var="arr" value="<%=new int[] {1,2,3,4,5} %>" />
	
	<c:forEach var="i" items="${arr }" varStatus="a">
		값 ${i }
		인덱스 ${a.index }
		카운트 ${a.count }
		<br>
	</c:forEach>
	
	<hr/>
	
	<%
		ArrayList<String>list = new ArrayList<>();
		list.add("홍길동");
		list.add("이순신");
		list.add("홍길자");
		list.add("박찬호");
		request.setAttribute("list", list);
		
	%>
	
	<c:forEach var="i" items="${requestScope.list}" varStatus="a">
		${a.count }.${i }<br>
	</c:forEach>
	
	
</body>
</html>