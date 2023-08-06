package bowl.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowl.controller.Controller;
import bowl.dao.BoardDao;
import bowl.vo.Board;

public class BoardRegProcController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BoardRegProcController~~~~~~~~~~");
		
		request.setCharacterEncoding("utf-8");
		String bwriter = request.getParameter("writer");
		String btitle = request.getParameter("title");
		String bcontent = request.getParameter("content");
		
		Board b = new Board();
		b.setBwriter(bwriter);
		b.setBtitle(btitle);
		b.setBcontent(bcontent);
		
		BoardDao dao = new BoardDao();
		dao.write(b);
		
		response.sendRedirect("board.do");
	}

}
