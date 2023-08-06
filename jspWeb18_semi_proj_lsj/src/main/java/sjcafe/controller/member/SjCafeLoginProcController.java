package sjcafe.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sjcafe.controller.SjController;
import sjcafe.dao.SjMemberDao;
import sjcafe.vo.SjMember;

public class SjCafeLoginProcController implements SjController{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("SjCafeLoginProcController~~~~~~~~~~~~~~~~~");
		
		request.setCharacterEncoding("utf8");
		String uid = request.getParameter("id");
		String pwd = request.getParameter("password");
		
		SjMemberDao dao = new SjMemberDao();
		SjMember m = dao.getSjMember(uid);
		
		//로그인 경우의 수(상태분류)
		if(m==null) {
			request.setAttribute("error", "아이디 없음");
			request.getRequestDispatcher("loginForm.jsp").forward(request, response);
		}else if(!m.getSjpwd().equals(pwd)) {
			request.setAttribute("error", "비번 틀림");
			request.getRequestDispatcher("loginForm.jsp").forward(request, response);
		}else {
			//아이디 세션에 담고 board.do로 진행
			request.getSession().setAttribute("uid", uid);
			response.sendRedirect("../sjcafe/board.do");
		}
				
	}

}
