package sjcafe.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sjcafe.controller.SjController;

public class SjCafeLoginController implements SjController {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("SjCafeLoginController~~~~~~~~~~~~~~~~~~~~~~");
		
		request.getRequestDispatcher("loginForm.jsp").forward(request, response);
		
	}

}
