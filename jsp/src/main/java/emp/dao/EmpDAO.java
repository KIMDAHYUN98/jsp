package emp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/*
 * VO : Value Object == EmpDTO, EmpDO, Emp ...
 * DAO : Data Access Object 
 */
public class EmpDAO {
	// 넘겨줄 값이 너무 많을 때 VO를 사용
	Connection conn;
	PreparedStatement psmt;
	
	// singletone : static 필드로 만들어 진 후 DAO를 요청할 때마다 new를 쓰지 않고 그대로 불러올 수 있음, 최초 1번 생성
	private static EmpDAO instance;
	public static EmpDAO getInstance() {
		if(instance == null) {
			instance = new EmpDAO();
		}
		return instance;
	}
	
	// 전체 조회 select * from employees
	public ArrayList<EmpVO> selectList() {
		ArrayList<EmpVO> list = new ArrayList<EmpVO>();
		EmpVO vo = null;
		try {
			conn = JdbcUtil.connect();
			String sql = "select EMPLOYEE_ID, "
							+ " FIRST_NAME, "
							+ " LAST_NAME, "
							+ " EMAIL, "
							+ " PHONE_NUMBER, "
					//		+ " TO_CHAR(HIRE_DATE, 'yyyy-MM') hire_date, "
							+ "HIRE_DATE, "
							+ " JOB_ID, "
							+ " SALARY, "
							+ " COMMISSION_PCT, "
							+ " MANAGER_ID, "
							+ " DEPARTMENT_ID "
						+ " from employees"
						+ " order by FIRST_NAME";
			psmt = conn.prepareStatement(sql);
			
			ResultSet rs = psmt.executeQuery();
			while(rs.next()) { // rs => 커서의 위치를 이동시키는 메소드?
				vo = new EmpVO();
				vo.setEmployee_id(rs.getString(1));
				vo.setFirst_name(rs.getString("FIRST_NAME"));
				vo.setLast_name(rs.getString(3));
				vo.setEmail(rs.getString(4));
				vo.setPhone_number(rs.getString(5));
				vo.setHire_date(rs.getDate(6));
				vo.setJob_id(rs.getString(7));
				vo.setSalary(rs.getString(8));
				vo.setCommission_pct(rs.getString(9));
				vo.setManager_id(rs.getString("MANAGER_ID"));
				vo.setDepartment_id(rs.getString("DEPARTMENT_ID"));
				
				list.add(vo);

			}
		} catch(Exception e) {
			System.out.println(e.getMessage());
		} finally {
			JdbcUtil.disconnect(conn);
		}
		return list;
	}
	
	// 단건 조회 select * from employees where employee_id = ?
	public EmpVO selectOne(String id) {
		EmpVO vo = null;
		try {
			conn = JdbcUtil.connect();
			String sql = "select EMPLOYEE_ID, "
							+ " FIRST_NAME, "
							+ " LAST_NAME, "
							+ " EMAIL, "
							+ " PHONE_NUMBER, "
							+ " HIRE_DATE, "
							+ " JOB_ID, "
							+ " SALARY, "
							+ " COMMISSION_PCT, "
							+ " MANAGER_ID, "
							+ " DEPARTMENT_ID "
						+ " from employees where employee_id = ?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, id);
			ResultSet rs = psmt.executeQuery();
			if(rs.next()) { // rs => 커서의 위치를 이동시키는 메소드?
				vo = new EmpVO();
				vo.setEmployee_id(rs.getString(1));
				vo.setFirst_name(rs.getString("FIRST_NAME"));
				vo.setLast_name(rs.getString(3));
				vo.setEmail(rs.getString(4));
				vo.setPhone_number(rs.getString(5));
				vo.setHire_date(rs.getDate(6));
				vo.setJob_id(rs.getString(7));
				vo.setCommission_pct(rs.getString(8));
				vo.setDepartment_id(rs.getString("department_id"));

			}
		} catch(Exception e) {
			System.out.println(e.getMessage());
		} finally {
			JdbcUtil.disconnect(conn);
		}
		return vo;
	}
	
	// 전체 조회
	
	public void insert(EmpVO vo) {
		
		try {
		
		// 1. connect (연결)
		conn = JdbcUtil.connect();
		// 2. statement (실행한 sql 구문)
		
		String sql = "INSERT INTO EMPLOYEES "
						+ " (EMPLOYEE_ID,"
						+ " LAST_NAME,"
						+ " EMAIL,"
						+ " HIRE_DATE,"
						+ " JOB_ID) "
				  + " VALUES (?, ?, ?, ?, ?)";
		PreparedStatement psmt = conn.prepareStatement(sql);
		
		// 3. execute (실행)
		
		psmt.setString(1, vo.getEmployee_id());
		psmt.setString(2, vo.getLast_name());
		psmt.setString(3, vo.getEmail());
		psmt.setDate(4, vo.getHire_date());
		psmt.setString(5, vo.getJob_id());
		int r = psmt.executeUpdate();
		System.out.println(r + " 건이 등록됨.");
		
		// 4. resultSet(select 라면 조회 결과 처리, 없으면 스킵)
		
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
		
		// 5. close (연결해제)
			JdbcUtil.disconnect(conn);
		} // 공통으로 쓰는 부분은 메소드로 생성(connect, close)
	}
	
	public void update(EmpVO vo) {
		
		try {
		
		// 1. connect (연결)
			JdbcUtil.connect();
		// 2. statement (실행한 sql 구문)
		
		// 3. execute (실행)
		
		// 4. resultSet(select 라면 조회 결과 처리, 없으면 스킵)
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
		// 5. close (연결해제)
			JdbcUtil.disconnect(conn);
		} // 공통으로 쓰는 부분은 메소드로 생성(connect, close)
	}
	
	//이메일 단건 조회
	public EmpVO selectOneByEmail(String id) {
		EmpVO vo = null;
		try {
			conn = JdbcUtil.connect();
			String sql = "select EMPLOYEE_ID, "
							+ " FIRST_NAME, "
							+ " LAST_NAME, "
							+ " EMAIL, "
							+ " PHONE_NUMBER, "
							+ " HIRE_DATE, "
							+ " JOB_ID, "
							+ " SALARY, "
							+ " COMMISSION_PCT, "
							+ " MANAGER_ID, "
							+ " DEPARTMENT_ID "
						+ " from employees where email = ?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, id);
			ResultSet rs = psmt.executeQuery();
			if(rs.next()) {
				vo = new EmpVO();
				vo.setEmployee_id(rs.getString(1));
				vo.setFirst_name(rs.getString("FIRST_NAME"));
				vo.setLast_name(rs.getString(3));
				vo.setEmail(rs.getString(4));
				vo.setPhone_number(rs.getString(5));
				vo.setHire_date(rs.getDate(6));
				vo.setJob_id(rs.getString(7));
				vo.setCommission_pct(rs.getString(8));

			}
		} catch(Exception e) {
			System.out.println(e.getMessage());
		} finally {
			JdbcUtil.disconnect(conn);
		}
		return vo;
	}
}
