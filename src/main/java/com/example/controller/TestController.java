package com.example.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.test") //1. 확장자패턴을 씁니다( ~~~~,test로 끝나면 맵핑)
public class TestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public TestController() {
        super();
    }
    
    //2. get/post 요청도하나로 모은다.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request,response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//3.URL주소를 분기(각 요청별로 코드를 만듬)
		
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		
		String path = uri.substring(request.getContextPath().length());
		
		System.out.println(path);
		
		if(path.equals("/controller/join.test")) {
			//회원가입~~~
		}else if(path.equals("/controller/modify.test")) {
			//정보수정
		}else if(path.equals("/controller/delete.test")){
			//회원탈퇴~~
		}else if(path.equals("/controller/logout.test")) {
			//로그아웃~~
		}
		
	}
}