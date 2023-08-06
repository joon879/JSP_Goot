package bowl.controller.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowl.controller.Controller;
import bowl.dao.BoardDao;
import bowl.vo.Board;


public class BoardController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception, IOException{
		System.out.println("BoardController~~~~~~~~~~~~");
		
		//search
		String field = request.getParameter("f");
		
		//링크타고(index에서) 처음에 notice화면 오면 아무 결과 안 뜨는 상황 해결.
		if(field==null || field.equals("")) {
			field = "btitle";
		}
		System.out.println("field: "+field);
		
		String query = request.getParameter("q");
		System.out.println("query: "+query);
		if(query==null) {
			query="";
		}
		
		
		BoardDao dao = new BoardDao();
		List<Board> list = dao.boardSelAll(field, query);
		
		//forward처리(jsp로 다시 전달하기 위해?)
		//List<Board>를 request에 저장
		request.setAttribute("list", list); //request에 n이라는 이름으로 n을 담는다.
		request.setAttribute("query", query);
		
		request.getRequestDispatcher("board.jsp").forward(request, response);
		

		
	}

}
