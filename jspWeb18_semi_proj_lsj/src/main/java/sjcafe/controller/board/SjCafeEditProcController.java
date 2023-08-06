package sjcafe.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sjcafe.controller.SjController;
import sjcafe.dao.SjCafeDao;
import sjcafe.vo.SjCafe;

public class SjCafeEditProcController implements SjController{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("SjCafeEditProcController~~~~~~~~~~~~~");
		
		request.setCharacterEncoding("utf-8");
		String sjno = request.getParameter("c");
		String sjtitle = request.getParameter("title");
		String sjcontent = request.getParameter("sjcontent");
		
		SjCafe sj = new SjCafe();
		sj.setSjtitle(sjtitle);
		sj.setSjcontent(sjcontent);
		sj.setSjno(sjno);
		
		SjCafeDao dao = new SjCafeDao();
		dao.update(sj);
		
		request.setAttribute("sj", sj);
		request.getRequestDispatcher("boardDetail.jsp").forward(request, response);
	}

}
