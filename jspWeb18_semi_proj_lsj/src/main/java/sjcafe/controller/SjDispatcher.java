package sjcafe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sjcafe.controller.board.SjCafeController;
import sjcafe.controller.board.SjCafeDelProcController;
import sjcafe.controller.board.SjCafeDetailController;
import sjcafe.controller.board.SjCafeDownloadController;
import sjcafe.controller.board.SjCafeEditController;
import sjcafe.controller.board.SjCafeEditProcController;
import sjcafe.controller.board.SjCafeRegController;
import sjcafe.controller.board.SjCafeRegProcController;
import sjcafe.controller.member.SjCafeJoinController;
import sjcafe.controller.member.SjCafeJoinProcController;
import sjcafe.controller.member.SjCafeLoginController;
import sjcafe.controller.member.SjCafeLoginProcController;
import sjcafe.controller.member.SjCafeLogoutProcController;

public class SjDispatcher extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request, response를 jsp에서 가져온다.
		
		System.out.println("http신호");
		String uri = request.getRequestURI();
		System.out.println("uri: "+uri);
		
		String conPath = request.getContextPath();
		//System.out.println(uri);
		System.out.println("conPath: "+conPath);
		//System.out.println(conPath);
		
		String com = uri.substring(conPath.length());
		System.out.println("com: "+com);
		
		SjController controller = null;
		
		try {
			if(com.equals("/sjcafe/board.do")) {
				controller = new SjCafeController();
			}else if(com.equals("/sjcafe/boardDetail.do")) {
				controller = new SjCafeDetailController();
			}else if(com.equals("/sjcafe/boardReg.do")) {
				controller = new SjCafeRegController();
			}else if(com.equals("/sjcafe/boardRegProc.do")) {
				controller = new SjCafeRegProcController();
			}else if(com.equals("/sjcafe/boardEdit.do")) {
				controller = new SjCafeEditController();
			}else if(com.equals("/sjcafe/boardEditProc.do")) {
				controller = new SjCafeEditProcController();
			}else if(com.equals("/sjcafe/boardDelProc.do")) {
				controller = new SjCafeDelProcController();
			}else if(com.equals("/login/loginForm.do")) {
				controller = new SjCafeLoginController();
			}else if(com.equals("/login/loginProc.do")) {
				controller = new SjCafeLoginProcController();
			}else if(com.equals("/login/logoutProc.do")) {
				controller = new SjCafeLogoutProcController();
			}else if(com.equals("/join/joinForm.do")) {
				controller = new SjCafeJoinController();
			}else if(com.equals("/join/joinProc.do")) {
				controller = new SjCafeJoinProcController();
			}else if(com.equals("/sjcafe/download.do")) {
				controller = new SjCafeDownloadController();
			}
			controller.execute(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
