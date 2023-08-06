package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeDetailController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeDetailController~~~~~~~~~~~~~~~");
		
		String seq = request.getParameter("c");
		String hit = request.getParameter("h"); 
		// notice.jsp에서 (&h=${n.hit }) 조회수를 받아온다.
		System.out.println("hit: "+hit);
		
		NoticeDao dao = new NoticeDao();
		Notice n = dao.getNotice(seq, hit);
		
		//forward처리(jsp로 다시 전달하기 위해?)
		request.setAttribute("n", n); //request에 n이라는 이름으로 n을 담는다.
		request.getRequestDispatcher("noticeDetail.jsp").forward(request, response);
		
	}
	
//	public void execute(HttpServletRequest request, HttpServletResponse response) 
//			throws Exception {
//		System.out.println("NoticeDetailController~~~~~~~~~~~~~~~");
//		
//		String seq = request.getParameter("c");
//		NoticeDao dao = new NoticeDao();
//		Notice n = dao.getNotice(seq);
//		
//		//forward처리(jsp로 다시 전달하기 위해?)
//		request.setAttribute("n", n); //request에 n이라는 이름으로 n을 담는다.
//		request.getRequestDispatcher("noticeDetail.jsp").forward(request, response);
//		
//		
//		
//		
//		
//	}
}
