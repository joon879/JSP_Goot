package jobkorea.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jobkorea.controller.Controller;

public class NoticeRegController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeRegController~~~~~~~~~~~~~~~");
		
		request.getRequestDispatcher("jobReg.jsp").forward(request, response);
	}

}
