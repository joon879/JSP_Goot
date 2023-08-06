package sjcafe.controller.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sjcafe.controller.SjController;
import sjcafe.dao.SjCafeDao;
import sjcafe.vo.SjCafe;

public class SjCafeController implements SjController{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("SjCafeController~~~~~~~~~~~~~~~~~~");
		
		//search
		String field = request.getParameter("f");
		
		//링크타고(index에서) 처음에 board화면 오면 아무 결과 안 뜨는 상황 해결.
		if(field==null || field.equals("")) {
			field = "sjtitle";
		}
		System.out.println("field: "+field);
		
		String query = request.getParameter("q");
		System.out.println("query: "+query);
		if(query==null) {
			query="";
		}
		
		SjCafeDao dao = new SjCafeDao();
		List<SjCafe> list = dao.sjcafeSelAll(field, query);
		
		request.setAttribute("list", list);
		request.setAttribute("query", query);
		
		request.getRequestDispatcher("board.jsp").forward(request, response);
	}

}
