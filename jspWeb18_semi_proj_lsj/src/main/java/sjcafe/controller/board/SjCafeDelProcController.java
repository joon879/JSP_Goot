package sjcafe.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sjcafe.controller.SjController;
import sjcafe.dao.SjCafeDao;

public class SjCafeDelProcController implements SjController{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("BoardDelProcController~~~~~~~~");
		
		String sjno = request.getParameter("c");
		
		SjCafeDao dao = new SjCafeDao();
		int del = dao.delete(sjno);
		
		if(del > 0) {
			response.sendRedirect("board.do");
		}else {
			System.out.println("삭제 오류");
		}
	}
}
