package customer.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.notice.NoticeDetailController;
import customer.controller.notice.NoticeEditController;

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
		
		NoticeDetailController controller1 = new NoticeDetailController();
		NoticeEditController controller2 = new NoticeEditController();
		
		try {
			if(com.equals("/customer/noticeDetail.do")) {
				controller1.execute(request, response);
			}else if(com.equals("/customer/noticeEdit.do")) {
				controller2.execute(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
