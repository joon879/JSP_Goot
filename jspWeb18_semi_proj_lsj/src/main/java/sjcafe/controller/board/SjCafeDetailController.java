package sjcafe.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sjcafe.controller.SjController;
import sjcafe.dao.SjCafeDao;
import sjcafe.vo.SjCafe;

public class SjCafeDetailController implements SjController {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String sjno = request.getParameter("c");
		String sjhit = request.getParameter("h");
		
		SjCafeDao dao = new SjCafeDao();
		SjCafe sj = dao.getSjCafe(sjno, sjhit);
		
		request.setAttribute("sj", sj);
		request.getRequestDispatcher("boardDetail.jsp").forward(request, response);
		
	}
}
