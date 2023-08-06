package jobkorea.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jobkorea.controller.Controller;
import jobkorea.dao.jobNoticeDao;

public class NoticeDelProcController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeDelProcController~~~~~~~~~~~~~~~");
		
		String no = request.getParameter("c");
		
		jobNoticeDao dao = new jobNoticeDao();
		int del = dao.delete(no);
		
		
		
		//System.out.println("del cnt: "+del);
		if (del > 0) {
			response.sendRedirect("jobNotice.jsp");
		} else {
			System.out.println("삭제오류");
		}
	}

}
