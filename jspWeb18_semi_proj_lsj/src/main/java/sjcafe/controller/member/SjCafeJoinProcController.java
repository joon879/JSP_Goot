package sjcafe.controller.member;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sjcafe.controller.SjController;
import sjcafe.dao.SjMemberDao;
import sjcafe.vo.SjMember;

public class SjCafeJoinProcController implements SjController{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("SjCafeJoinProcController~~~~~~~~~~~~");
		
		request.setCharacterEncoding("utf8");
		String id = request.getParameter("sjid");
		String pwd = request.getParameter("sjpwd");
		String pwd2 = request.getParameter("sjpwd2");
		String name = request.getParameter("sjname");
		String gender = request.getParameter("sjgender");
		
		String year = request.getParameter("sjyear");
		String month = request.getParameter("sjmonth");
		String day = request.getParameter("sjday");
		String birth = String.format("%s-%s-%s", year, month, day);

		String IsLunar = request.getParameter("sjIsLunar");
		String cphone = request.getParameter("sjcphone");
		String email = request.getParameter("sjemail");
		
		String[] habits = request.getParameterValues("sjhabit");
		
		String sjhabit = "";
		if(habits != null){
			for(int i=0; i<habits.length; i++){
				sjhabit += habits[i];
				if(habits.length > i+1)
					sjhabit += ", ";
			}
		}
		
		//에러 메시지 전송 -> joinForm.jsp로
		//아이디 없음, 비번 불일치 시
		List<String> errors = new ArrayList();
		if(id==null || id.equals("")){
			errors.add("아이디 없음");
		}
		if(!pwd.equals(pwd2)){
			errors.add("비번 불일치");
		}
		//에러가 한 개라도 있으면 조건으로 분기(있으면 join으로)
		if(errors.size() > 0){
			System.out.println(errors);
			//request에 에러 보관
			request.setAttribute("errors", errors);
			//response.sendRedirect("join.jsp");
			request.getRequestDispatcher("joinForm.jsp").forward(request, response);
		}else{
			SjMember m = new SjMember();
			m.setSjid(id);
			m.setSjpwd(pwd);
			m.setSjname(name);
			m.setSjgender(gender);
			m.setSjbirth(birth);
			m.setSjis_lunar(IsLunar);
			m.setSjcphone(cphone);
			m.setSjemail(email);
			m.setSjhabit(sjhabit);
			
			
			SjMemberDao dao = new SjMemberDao();
			dao.joinSjMember(m);
			
			response.sendRedirect("../login/loginForm.jsp");
		}
	}
}
