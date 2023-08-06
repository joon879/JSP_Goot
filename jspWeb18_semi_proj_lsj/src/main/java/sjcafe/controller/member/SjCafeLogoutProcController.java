package sjcafe.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sjcafe.controller.SjController;

public class SjCafeLogoutProcController implements SjController {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("SjCafeLogoutProcController~~~~~~~~~~");
		
		//세션 제거하고 board.do로 이동
		request.getSession().invalidate();
		//request.getSession().removeAttribute("uid");
		
		response.sendRedirect("../sjcafe/board.do");
		
	}

}
