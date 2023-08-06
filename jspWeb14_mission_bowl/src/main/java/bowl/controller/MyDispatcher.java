package bowl.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowl.controller.board.BoardController;
import bowl.controller.board.BoardDelProcController;
import bowl.controller.board.BoardDetailController;
import bowl.controller.board.BoardEditController;
import bowl.controller.board.BoardEditProcController;
import bowl.controller.board.BoardRegController;
import bowl.controller.board.BoardRegProcController;


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
			if(com.equals("/bowl/boardDetail.do")) {
				controller = new BoardDetailController();
			}else if(com.equals("/bowl/boardEdit.do")) {
				controller = new BoardEditController();
			}else if(com.equals("/bowl/boardEditProc.do")) {
				controller = new BoardEditProcController();
			}else if(com.equals("/bowl/boardReg.do")) {
				controller = new BoardRegController();
			}else if(com.equals("/bowl/boardRegProc.do")) {
				controller = new BoardRegProcController();
			}else if(com.equals("/bowl/boardDelProc.do")) {
				controller = new BoardDelProcController();
			}else if(com.equals("/bowl/board.do")) {
				controller = new BoardController();
			}
			controller.execute(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
