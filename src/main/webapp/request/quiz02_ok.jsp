<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
		/*
    1. form태그를 이용해서 post형식으로 이름, 키와 몸무게를 입력받음
	2. quiz02_ok.jsp로 전송
	3. 해당 페이지 에서는 넘어간 값을 BMI지수를 처리
	4. BMI공식 = kg / (cm/100 * cm/100)  -> 문자열이기 때문에 형변환 진행(실수)
	화면에 이름, 키, 몸무게 BMI지수를 출력
	if을 통해 BMI지수가 25이상 과체중, 18 이하라면 저체중, 나머지는 정상으로 출력
		*/
    %>
    
    <%
		request.setCharacterEncoding("utf-8");
    	String name = request.getParameter("name");
    	String height = request.getParameter("height");
    	String weight = request.getParameter("weight");
    	
    	int cm = Integer.parseInt(height);
    	
    	double kg = Double.parseDouble(weight);
    	
    	double bmi = kg / (cm * cm) * 10000;
    	
    	int bmi2 = (int)bmi;
    	
    	String answer = "";
    	if(bmi >= 25.0){
    		answer = "과체중";
    	}else if(bmi<=18.0){
    		answer = "저체중";
    	}else{
    		answer ="정상";
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	이름:<%=name %><br>
	키: <%=height %><br>
	몸무게:<%=weight %><br>
	bmi:<%=bmi %><br>
	당신은 ?!?! : <%=answer %>
	
	
</body>
</html>