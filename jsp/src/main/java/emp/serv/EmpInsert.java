package emp.serv;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.DateUtil;
import emp.dao.DeptDAO;
import emp.dao.DeptVO;
import emp.dao.EmpDAO;
import emp.dao.EmpVO;
import emp.dao.JobDAO;
import emp.dao.JobVO;

public class EmpInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public EmpInsert() {
        super();
    }
    //등록페이지로 이동
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<JobVO> jobList = JobDAO.getInstance().selectList();
		List<DeptVO> deptList = DeptDAO.getInstance().selectList();
		request.setAttribute("jobList", jobList);
		request.setAttribute("deptList", deptList);
		// http://localhost/jsp/
		request.getRequestDispatcher("/emp/empInsert.jsp")
			   .forward(request, response); // request 정보를 전달
	}
	//등록과 수정 동시에 처리
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//파라미터 VO 담기
		 String hire_date = request.getParameter("hire_date");
		 // 객체 생성과 초기화 하는 것을 builder 로 동시에 대체 할 수 있다.
//		 EmpVO empVO = EmpVO.builder().last_name(request.getParameter("last_name"))
//				 					  .hire_date(DateUtil.toDate(hire_date))				 					  
//				 					  .email(request.getParameter("email"))
//				 					  .employee_id(request.getParameter("employee_id"))
//				 					  .job_id(request.getParameter("job_id"))
//				 					  
//				 					  .build();
//		 EmpDAO.getInstance().insert(empVO);
		 request.getRequestDispatcher("empList").forward(request, response);
//		 response.sendRedirect("empList");
	}

}
