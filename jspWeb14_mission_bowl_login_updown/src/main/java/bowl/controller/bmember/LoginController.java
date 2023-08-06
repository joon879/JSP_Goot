package bowl.controller.bmember;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowl.controller.Controller;

public class LoginController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("LoginController~~~~~~~~~~~");
		
		request.getRequestDispatcher("loginForm.jsp").forward(request, response);
		
	}

}
