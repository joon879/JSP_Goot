package sjcafe.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sjcafe.controller.SjController;
import sjcafe.dao.SjCafeDao;
import sjcafe.vo.SjCafe;

public class SjCafeEditController implements SjController {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("SjCafeEditController~~~~~~~~~~");
		
		String sjno = request.getParameter("c");
		SjCafeDao dao = new SjCafeDao();
		SjCafe sj = dao.getSjCafe(sjno);
		
		//forward처리(jsp로 다시 전달하기 위해?)
		request.setAttribute("sj", sj); //request에 n이라는 이름으로 n을 담는다.
		request.getRequestDispatcher("boardEdit.jsp").forward(request, response);
		
		
	}

}
