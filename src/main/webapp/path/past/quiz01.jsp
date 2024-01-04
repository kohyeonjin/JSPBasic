<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!--a태그로 jspTag폴더의 quiz01로 상대경로, 절대경로-->
	
	<a href="../../jspTag/quiz01.jsp">quiz01</a>
	<a href="/JSPBasic/jspTag/quiz01.jsp">quiz01</a><br>
	
	<!--img태그로 HTML폴더안에 있는 테스트1.jpg 상대경로, 절대경로 -->
		
	<img alt="제목" src="../../html/img/images.jpg">
	<img alt="제목" src="/JSPBasic/html/img/images.jpg"><br>
	
	
	<!--a태그로 TestServlet로 상대경로,절대경로 (맵핑경로 확인) -->
	
	<a href="../../../../../JSPBasic/apple">서블릿</a>
	<a href="/JSPBasic/apple">서블릿</a>
	

</body>
</html>