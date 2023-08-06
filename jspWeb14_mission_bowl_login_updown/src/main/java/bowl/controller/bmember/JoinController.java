package bowl.controller.bmember;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowl.controller.Controller;

public class JoinController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("JoinController~~~~~~~~~~~");
		
		request.getRequestDispatcher("join.jsp").forward(request, response);
		
	}

}
