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
		
		//search
		String field = request.getParameter("f");
		
		//링크타고(index에서) 처음에 notice화면 오면 아무 결과 안 뜨는 상황 해결.
		if(field==null || field.equals("")) {
			field = "title";
		}
		System.out.println("field: "+field);
		
		String query = request.getParameter("q");
		System.out.println("query: "+query);
		if(query==null) {
			query="";
		}
		
		
		NoticeDao dao = new NoticeDao();
		List<Notice> list = dao.noticeSelAll(field, query);
		
		//forward처리(jsp로 다시 전달하기 위해?)
		//List<Notice>를 request에 저장
		request.setAttribute("list", list); //request에 n(앞)이라는 이름으로 n을 담는다.
		request.setAttribute("query", query);
		
		request.getRequestDispatcher("notice.jsp").forward(request, response);
		
	}
}
