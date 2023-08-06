package customer.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.notice.NoticeController;
import customer.controller.notice.NoticeDelProcController;
import customer.controller.notice.NoticeDetailController;
import customer.controller.notice.NoticeEditController;
import customer.controller.notice.NoticeEditProcController;
import customer.controller.notice.NoticeRegController;
import customer.controller.notice.NoticeRegProcController;

public class MyDispatcher extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request, response를 jsp에서 가져온다.
		
		System.out.println("http 신호");
		String uri = request.getRequestURI();
		System.out.println("uri: "+uri);
		
		String conPath = request.getContextPath();
//		System.out.println(uri);
//		System.out.println(conPath);
		
		String com = uri.substring(conPath.length());
		System.out.println(com);
		
//		NoticeDetailController controller1 = new NoticeDetailController();
//		NoticeEditController controller2 = new NoticeEditController();
		//아래의 if에 넣음.
		
		Controller controller = null;
		
		try {
			if(com.equals("/customer/noticeDetail.do")) {
				controller = new NoticeDetailController();
			}else if(com.equals("/customer/noticeEdit.do")) {
				controller = new NoticeEditController();
			}else if(com.equals("/customer/noticeEditProc.do")) {
				controller = new NoticeEditProcController();
			}else if(com.equals("/customer/noticeReg.do")) {
				controller = new NoticeRegController();
			}else if(com.equals("/customer/noticeRegProc.do")) {
				controller = new NoticeRegProcController();
			}else if(com.equals("/customer/noticeDelProc.do")) {
				controller = new NoticeDelProcController();
			}else if(com.equals("/customer/notice.do")) {
				controller = new NoticeController();
			}
			controller.execute(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
