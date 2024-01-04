<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//쿠키 사용하기
    	//쿠키는 클라이언트에서 자동으로 전송되서 request객체에 담깁니다.
    	
    	Cookie[] arr = request.getCookies();
    	
    	//쿠키가 null이 아닐때 쿠키를 찾는작업.	
    	if(arr != null){
    		for(Cookie c : arr){
    			out.println(c.getName()); //쿠키명(키)
    			out.println(c.getValue());//쿠키값(값)
    			out.println("<br>");
    		}
    	}
    	
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>쿠키 확인하기</h3>
	<a href="cookie.del.jsp">쿠키삭제하기</a>
</body>
</html>