package bowl.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowl.controller.Controller;
import bowl.dao.BoardDao;
import bowl.vo.Board;

public class BoardEditController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BoardEditController~~~~~~~~~~~~~~~");
		
		String bno = request.getParameter("c");
		BoardDao dao = new BoardDao();
		Board b = dao.getBoard(bno);
		
		//forward처리(jsp로 다시 전달하기 위해?)
		request.setAttribute("b", b); //request에 n이라는 이름으로 n을 담는다.
		request.getRequestDispatcher("boardEdit.jsp").forward(request, response);
		
		
	}

}
