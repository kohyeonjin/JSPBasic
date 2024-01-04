<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
  <%
  	request.setCharacterEncoding("utf-8");
  %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--변수 선언-->
	<c:set var="a" value="홍길동"/>
	
	<!--출력-->
	<c:out value="${a }"/>
	
	
	<!--if문-->
	
	<c:if test="${param.name eq '홍길동' }">
		<b>홍길동 입니다</b>
	</c:if>
	<c:if test="${param.name eq '이순신' }">
		<b>이순신 입니다</b>
	</c:if>
	
	<%-- 	
	<%
		String name = request.getParameter("name");
	%>
	<%if(name.equals("홍길동")){ %>
	<b>홍길동 입니다</b>
	<%} %>
	 --%>
	 
	<!--  <h3>이름이 홍길동이고, 나이가 20세 이상이라면 "성인입니다" 출력</h3>
	  -->
	 <c:if test="${param.name eq '홍길동' and param.age >= 20}">
	 	<b>성인입니다</b>
	 </c:if>
	 

	 
</body>
</html>