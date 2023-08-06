package sjcafe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface SjController {
	//추상메소드
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
