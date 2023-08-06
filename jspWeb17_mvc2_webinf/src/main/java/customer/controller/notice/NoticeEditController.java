package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeEditController implements Controller{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeEditController~~~~~~~~~~~~~~~");
		
		String seq = request.getParameter("c");
		NoticeDao dao = new NoticeDao();
		Notice n = dao.getNotice(seq);
		
		//forward처리(jsp로 다시 전달하기 위해?)
		request.setAttribute("n", n); //request에 n이라는 이름으로 n을 담는다.
		request.getRequestDispatcher("/WEB-INF/view/customer/noticeEdit.jsp").forward(request, response);
		
		
	}
}
