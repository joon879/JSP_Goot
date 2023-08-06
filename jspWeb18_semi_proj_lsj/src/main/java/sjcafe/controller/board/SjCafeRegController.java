package sjcafe.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sjcafe.controller.SjController;

public class SjCafeRegController implements SjController {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("SjCafeRegController~~~~~~~~~~~~~");
		
		request.getRequestDispatcher("boardReg.jsp").forward(request, response);

	}

}
