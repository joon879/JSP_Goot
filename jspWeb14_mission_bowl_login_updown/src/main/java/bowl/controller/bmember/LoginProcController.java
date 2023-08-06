package bowl.controller.bmember;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowl.controller.Controller;
import bowl.dao.BmemberDao;
import bowl.vo.Bmember;

public class LoginProcController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("LoginProcController~~~~~~~~~~~");
		
		request.setCharacterEncoding("utf8");
		String uid = request.getParameter("id");
		String pwd = request.getParameter("password");
		
//		dao처리
		BmemberDao dao = new BmemberDao();
		Bmember m = dao.getMember(uid);
		
		//로그인 경우의 수(상태분류)
		if(m==null) {//아이디 없음
			request.setAttribute("error", "아이디 없음");
			request.getRequestDispatcher("loginForm.jsp").forward(request, response);
		}else if(!m.getPwd().equals(pwd)) {//비번 틀림
			request.setAttribute("error", "비번 틀림");
			request.getRequestDispatcher("loginForm.jsp").forward(request, response);
		}else {//성공
//			아이디 세션에 담고 board.do로 진행
			request.getSession().setAttribute("uid", uid);
			response.sendRedirect("../bowl/board.do");
		}		
	}
}
