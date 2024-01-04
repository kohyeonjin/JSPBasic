package com.example.jdbc;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class MainClass {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		Model model = new Model();
//		model.selectOne();
//		System.out.print("부서아이디>");
//		int d = scan.nextInt();
//		
//		System.out.print("부서이름>");
//		String name = scan.next();
//		
//		System.out.print("매니저아이디>");
//		String mId = scan.next();
//		
//		System.out.print("부서아이디>");
//		String lId = scan.next();
//		
//		model.insertOne(d,name,mId,lId);
		
//		System.out.print("update할 dept_id");
//		int id = scan.nextInt();
//		System.out.print("update할 이름");
//		String name = scan.next();
		
//		System.out.print("update할 매니저아이디");
//		String mId = scan.next();
//	
//		model.updateOne(id, name, mId);
		
//		System.out.print("삭제할 employee_id");
//		int eId = scan.nextInt();
//		model.deleteOne(eId);
//		
		ArrayList<EmployeeVo> list= model.selectTwo();
		
		
		
		
		
	}
		
//		for(EmployeeVo vo : list) {
//			System.out.println("employee_id :" + vo.getEmployeeId());
//			System.out.println("name: :" + vo.getFirstName());
//			System.out.println("salary: :" + vo.getSalary());
//			System.out.println("department_name: :" + vo.getDepartmentName());
//			System.out.println("===========================================");
//		}

	}