package jobkorea.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jobkorea.controller.Controller;
import jobkorea.dao.jobNoticeDao;
import jobkorea.vo.jobNotice;

public class NoticeEditProcController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("NoticeEditProcController~~~~~~~~~~");
		
		request.setCharacterEncoding("utf-8");
		String no = request.getParameter("c");
		String title = request.getParameter("title");
		String career = request.getParameter("career");
		String employment_type = request.getParameter("employment_type");
		String prefer_basic = request.getParameter("prefer_basic");
		String salary = request.getParameter("salary");
		String location = request.getParameter("location");
		String time = request.getParameter("time");
		
		jobNotice n = new jobNotice();
		n.setTitle(title);
		n.setCareer(career);
		n.setPrefer_basic(prefer_basic);
		n.setEmployment_type(employment_type);
		n.setSalary(salary);
		n.setLocation(location);
		n.setTime(time);
		n.setNo(no);
		
		jobNoticeDao dao = new jobNoticeDao();
		dao.update(n);
		
		//response.sendRedirect("jobDetail.jsp?c="+no); 이게 MVC2가 되면서 아래로 바뀜.
		request.setAttribute("n", n);
		request.getRequestDispatcher("jobDetail.jsp").forward(request, response);
		//request.getRequestDispatcher("jobDetail.do?c="+seq).forward(request, response);
		//이건 양식제출 한번 더 뜸. seq를 다시 받아와서.
		
	}

}
