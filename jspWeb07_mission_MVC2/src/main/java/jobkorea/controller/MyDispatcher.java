package jobkorea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jobkorea.controller.notice.NoticeDelProcController;
import jobkorea.controller.notice.NoticeDetailController;
import jobkorea.controller.notice.NoticeEditController;
import jobkorea.controller.notice.NoticeEditProcController;
import jobkorea.controller.notice.NoticeRegController;
import jobkorea.controller.notice.NoticeRegProcController;

public class MyDispatcher extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request, response를 jsp에서 가져온다.
		
		System.out.println("http 신호");
		
		String uri = request.getRequestURI();
		System.out.println("uri: "+uri);
		
		String conPath = request.getContextPath();
		System.out.println("conPath: "+conPath);
		
		String com = uri.substring(conPath.length());
		System.out.println("com: "+com);
		
		//NoticeDetailController controller1 = new NoticeDetailController();
		//NoticeEditController controller2 = new NoticeEditController();
		//아래의 if에 넣음.
		
		Controller controller = null;
		
		try {
			if(com.equals("/jobkorea/jobDetail.do")) {
				controller = new NoticeDetailController();
			}else if(com.equals("/jobkorea/jobEdit.do")) {
				controller = new NoticeEditController();
			}else if(com.equals("/jobkorea/jobEditProc.do")) {
				controller = new NoticeEditProcController();
			}else if(com.equals("/jobkorea/jobReg.do")) {
				controller = new NoticeRegController();
			}else if(com.equals("/jobkorea/jobRegProc.do")) {
				controller = new NoticeRegProcController();
			}else if(com.equals("/jobkorea/jobDelProc.do")) {
				controller = new NoticeDelProcController();
			}
			controller.execute(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			
		}
	}
}
