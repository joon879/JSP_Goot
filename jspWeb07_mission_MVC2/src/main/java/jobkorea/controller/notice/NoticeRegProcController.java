package jobkorea.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jobkorea.controller.Controller;
import jobkorea.dao.jobNoticeDao;
import jobkorea.vo.jobNotice;

public class NoticeRegProcController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeRegProcController~~~~~~~~~~~~~~~");
		
		request.setCharacterEncoding("utf-8");
		String work = request.getParameter("work");
		String company = request.getParameter("company");
		String title = request.getParameter("title");
		String career = request.getParameter("career");
		String academic_abilty = request.getParameter("academic_abilty");
		String prefer_basic = request.getParameter("prefer_basic");
		String prefer_language = request.getParameter("prefer_language");
		String employment_type = request.getParameter("employment_type");
		String salary = request.getParameter("salary");
		String location = request.getParameter("location");
		String time = request.getParameter("time");
		String position = request.getParameter("position");
		
		jobNotice n = new jobNotice(); 
		n.setWork(work);
		n.setCompany(company);
		n.setTitle(title);
		n.setCareer(career);
		n.setAcademic_abilty(academic_abilty);
		n.setPrefer_basic(prefer_basic);
		n.setPrefer_language(prefer_language);
		n.setEmployment_type(employment_type);
		n.setSalary(salary);
		n.setLocation(location);
		n.setTime(time);
		n.setPosition(position);

		jobNoticeDao dao = new jobNoticeDao();
		dao.write(n);

		//목록으로 이동
		response.sendRedirect("jobNotice.jsp");
	}

}
