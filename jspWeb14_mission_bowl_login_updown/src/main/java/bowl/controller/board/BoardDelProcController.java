package bowl.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowl.controller.Controller;
import bowl.dao.BoardDao;

public class BoardDelProcController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DelProcController~~~~~~~~~~~~");
		
		String bno = request.getParameter("c");
		
		BoardDao dao = new BoardDao();
		int del = dao.delete(bno);
		
		//System.out.println("del cnt: "+del);
		if (del > 0) {
			response.sendRedirect("board.do");
		} else {
			System.out.println("삭제오류");
		}
	}

}
