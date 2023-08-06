package bowl.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowl.controller.Controller;

public class BoardRegController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
				
		System.out.println("BoardRegController~~~~~~~~~~~~~~~");
		
		request.getRequestDispatcher("boardReg.jsp").forward(request, response);		
	}

}
