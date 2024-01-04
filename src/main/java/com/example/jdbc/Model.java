package com.example.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

public class Model {
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String uid = "hr";
	private String upw = "hr";

	public Model () {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	//select 할 내용작성
	public void selectOne() {

		String sql = "SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID >= ?";
		//모든 jdcb 코드는 try~catch구문에서 작성이들어가야 합니다.(throws를 던지고 있기 때문)
		
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
	
			//2. conn 객체 새성
			conn = DriverManager.getConnection(url,uid,upw);
			//3.conn으로 부터 statemnet 객체 생성 = sql 상태를 지정하기 위한 객체
			pstmt = conn.prepareStatement(sql);
			//?에 개수에 맞추어 값을 채웁니다
			//setString (순서 , 문자열)
			//setInt(순서, 정수)
			//setDouble(순서, 실수)
			pstmt.setString(1, "120");

			//4.실행
			//executeQuery - select 문에 사용합니다
			//executeUpdate - insert, update, delete문에 사용합니다.

			rs = pstmt.executeQuery();

			while(rs.next()) { //다음이 있다면 true, 다음이 없다면 false

				//rs.getString(컬렴명) - 문자열 반환
				//rs.getInt(컬럼명) - 정수반환
				//rs.getDouble(컬럼명) - 실수반환
				//rs.getDate(컬럼명) - 날짜형반환

				int emp_id = rs.getInt("EMPLOYEE_ID");
				String first_name = rs.getString("FIRST_NAME");
				String phone_number = rs.getString("PHONE_NUMBER");
				//			String hire_date = rs.getString("HIRE_DATE");
				Timestamp hire_date = rs.getTimestamp("HIRE_DATE");
				int salary = rs.getInt("SALARY");
				System.out.println("아이디:" + emp_id);
				System.out.println("이름:" + first_name);
				System.out.println("전화번호:" + phone_number);
				System.out.println("입사일:" + hire_date );
				System.out.println("급여:" + salary );
				System.out.println("===========================");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {

			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}

	}

	//insert 할 내용작성
	public void insertOne(int id,String name, String m_id,String l_id) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		//ResultSet 은 insert에서 필요가 없습니다.

		String sql = "INSERT INTO DEPTS VALUES(?,?,?,?)";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//1.conn 생성
			conn = DriverManager.getConnection(url, upw, uid);
			//2.pstmt 생성
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1,id);
			pstmt.setString(2,name);
			pstmt.setString(3,m_id);
			pstmt.setString(4,l_id);

			//3.sql 실행
			int result = pstmt.executeUpdate(); // 성공시 1 OR 실패시 0

			if(result == 1) {
				System.out.println("인서트 성공");
			}else {
				System.out.println("인서트 실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
	
	//update할 내용작성
	//Main에서 부서아이디,부서명,매나저아이디를 받아서, 해당 부서의 부서명과 매니저 아이드를 수정해주세요
	public void updateOne(int id,String name,String mId) {
		
		Connection conn = null;
		PreparedStatement ppst = null;
		String sql = "UPDATE DEPTS SET DEPT_NAME = ?, DEPT_ID = ? WHERE DEPT_NO = ?";
		
				
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn = DriverManager.getConnection(url, upw, uid);
			ppst = conn.prepareStatement(sql);
			
			ppst.setString(1, name);
			ppst.setString(2, mId);
			ppst.setInt(3, id);
			
			int result = ppst.executeUpdate(); // 성공시 1 OR 실패시 0

			if(result == 1) {
				System.out.println("인서트 성공");
			}else {
				System.out.println("인서트 실패");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				ppst.close();	
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
	
	//delete할 내용작성
	//Main에서 employee_id를 받아서 emps 테이블에서 해당 아이디를 삭제해주세요.
	public void deleteOne(int eId) {

		Connection conn = null;
		PreparedStatement ppst = null;
		String sql = "DELETE FROM EMPS WHERE EMPLOYEE_ID = ?";
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, upw, uid);
			ppst = conn.prepareStatement(sql);
			
			ppst.setInt(1, eId);
			
			int result = ppst.executeUpdate();
			
			if(result == 1) {
				System.out.println("성공");
			}else {
				System.out.println("실패");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				ppst.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		
		
	}
	
	//조인을 통한 select
	public ArrayList<EmployeeVo> selectTwo() {
		
		//사원번호, 이름, 부서명 - 급여순으로 정렬을 해서 10~20번에 속해있는 데이터를 출력
		
		ArrayList<EmployeeVo> list = new ArrayList<>();
		
		String sql ="SELECT *\r\n"
				+ "FROM (SELECT ROWNUM AS RN , A.*\r\n"
				+ "FROM (SELECT EMPLOYEE_ID , LAST_NAME, SALARY,\r\n"
				+ "        (SELECT DEPARTMENT_NAME  FROM DEPARTMENTS D WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID) AS DEPARTMENT_NAME\r\n"
				+ "FROM EMPLOYEES E\r\n"
				+ "ORDER BY SALARY DESC )A)\r\n"
				+ "WHERE RN BETWEEN 10 AND 20";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				int employeeId = rs.getInt("EMPLOYEE_ID");
				String lastName = rs.getString("LAST_NAME");
				int salary = rs.getInt("SALARY");
				String dName = rs.getString("DEPARTMENT_NAME");
				
				//ORM작업
				EmployeeVo vo = new EmployeeVo(employeeId, lastName, salary, dName);
				list.add(vo);
				
			}
			} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
				
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return list;
	}
}
	