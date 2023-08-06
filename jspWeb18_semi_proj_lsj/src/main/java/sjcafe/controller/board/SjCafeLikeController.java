package sjcafe.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sjcafe.controller.SjController;
import sjcafe.dao.SjCafeDao;
import sjcafe.vo.SjCafe;

public class SjCafeLikeController implements SjController {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("SjCafeLikeController~~~~~~~~~~~");
		
			String sjno = request.getParameter("c");
			SjCafeDao dao = new SjCafeDao();
			SjCafe sj = dao.getSjCafe(sjno);
		
			request.setAttribute("sj", sj); //request에 n이라는 이름으로 n을 담는다.
			request.getRequestDispatcher("boardDetail.jsp").forward(request, response);
		
		
	}

}
