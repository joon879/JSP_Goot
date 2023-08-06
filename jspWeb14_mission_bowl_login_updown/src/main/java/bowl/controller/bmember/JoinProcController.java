package bowl.controller.bmember;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowl.controller.Controller;
import bowl.dao.BmemberDao;
import bowl.vo.Bmember;

public class JoinProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("JoinProcController~~~~~~~~~~~");

		
		request.setCharacterEncoding("utf8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String pwd2 = request.getParameter("pwd2");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");

		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String birth = String.format("%s-%s-%s", year, month, day);

		String IsLunar = request.getParameter("IsLunar");
		String cphone = request.getParameter("cphone");
		String email = request.getParameter("email");

		// String habit = request.getParameter("habit");
		String[] habits = request.getParameterValues("habit");

		String habit = "";
		if (habits != null) {
			for (int i = 0; i < habits.length; i++) {
				habit += habits[i];
				if (habits.length > i + 1)
					habit += ", ";
			}
		}

		// 에러 메시지 전송 -> join.jsp로
		// 아이디 없음, 비번 불일치 시
		List<String> errors = new ArrayList();
		if (id == null || id.equals("")) {
			errors.add("아이디 없음");
		}
		if (!pwd.equals(pwd2)) {
			errors.add("비번 불일치");
		}
		// 에러가 한 개라도 있으면 조건으로 분기(있으면 join으로)
		if (errors.size() > 0) {
			System.out.println(errors);
			// request에 에러 보관
			request.setAttribute("errors", errors);
			// response.sendRedirect("join.jsp");
			request.getRequestDispatcher("join.jsp").forward(request, response);
		} else {
			Bmember m = new Bmember();
			m.setId(id);
			m.setPwd(pwd);
			m.setName(name);
			m.setGender(gender);
			m.setBirth(birth);
			m.setBirth(birth);
			m.setCphone(cphone);
			m.setEmail(email);
			m.setHabit(habit);
			
			
			BmemberDao dao = new BmemberDao();
			dao.joinMember(m);
			
			response.sendRedirect("../login/loginForm.jsp");
			
		}
	}
}
