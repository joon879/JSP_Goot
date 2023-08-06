package customer.controller.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeController~~~~~~~~~~~~~~~");
		
		NoticeDao dao = new NoticeDao();
		List<Notice> list = dao.noticeSelAll();
		
		//forward처리(jsp로 다시 전달하기 위해?)
		//List<Notice>를 request에 저장
		request.setAttribute("list", list); //request에 n이라는 이름으로 n을 담는다.
		request.getRequestDispatcher("notice.jsp").forward(request, response);
		
	}
}
