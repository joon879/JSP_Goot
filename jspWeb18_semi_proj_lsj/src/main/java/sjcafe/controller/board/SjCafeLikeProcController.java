package sjcafe.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sjcafe.controller.SjController;

public class SjCafeLikeProcController implements SjController {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("SjCafeLikeProcController~~~~~~~~~~~");
		
		request.setCharacterEncoding("utf-8");
		String sjno = request.getParameter("c");

		
		
		
	}
}
