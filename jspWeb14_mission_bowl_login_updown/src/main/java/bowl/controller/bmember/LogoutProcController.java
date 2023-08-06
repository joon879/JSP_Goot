package bowl.controller.bmember;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowl.controller.Controller;


public class LogoutProcController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("LogoutProcController~~~~~~~~~~~");
		
		//세션제거
//		notice.do로 이동
		//request.getSession().invalidate(); 아래와 동일. 아래를 추천?
		request.getSession().removeAttribute("uid");
		
		response.sendRedirect("../bowl/board.do");
		
		
		
//		request.getRequestDispatcher("loginForm.jsp").forward(request, response);
		
	}

}
