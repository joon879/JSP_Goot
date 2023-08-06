package bowl.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowl.controller.Controller;
import bowl.dao.BoardDao;
import bowl.vo.Board;

public class BoardEditProcController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	System.out.println("BoardEditProcController~~~~~~~~~");
	
	request.setCharacterEncoding("utf-8");
	String bno = request.getParameter("c");
	String btitle = request.getParameter("title");
	String bcontenet = request.getParameter("content");
	
	
	Board b  = new Board();
	b.setBtitle(btitle);
	b.setBcontent(bcontenet);
	b.setBno(bno);
	
	BoardDao dao = new BoardDao();
	dao.update(b);
	
	request.setAttribute("b", b);
	request.getRequestDispatcher("boardDetail.jsp").forward(request, response);
		
	}

}
