package jobkorea.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jobkorea.controller.Controller;
import jobkorea.dao.jobNoticeDao;
import jobkorea.vo.jobNotice;

public class NoticeEditController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeEditController~~~~~~~~~~~~~~~");
		
		String no = request.getParameter("c");
		jobNoticeDao dao = new jobNoticeDao();
		jobNotice n = dao.getNotice(no);
		
		//forward처리(jsp로 다시 전달하기 위해?)
		request.setAttribute("n", n); //request에 n이라는 이름으로 n을 담는다.
		request.getRequestDispatcher("jobEdit.jsp").forward(request, response);
		
	}
		
//	public void execute(HttpServletRequest request, HttpServletResponse response){
//		System.out.println("NoticeEditController~~~~~~~~~~~~~~~");
//		
//		String no = request.getParameter("c");
//		jobNoticeDao dao = new jobNoticeDao();
//		jobNotice n = dao.getNotice(no);
//		
//		//forward처리(jsp로 다시 전달하기 위해?)
//		request.setAttribute("n", n); //request에 n이라는 이름으로 n을 담는다.
//		request.getRequestDispatcher("jobEdit.jsp").forward(request, response);
//		
//		
//	}
}
