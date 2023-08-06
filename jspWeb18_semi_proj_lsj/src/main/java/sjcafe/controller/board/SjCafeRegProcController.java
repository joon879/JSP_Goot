package sjcafe.controller.board;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import sjcafe.controller.SjController;
import sjcafe.dao.SjCafeDao;
import sjcafe.vo.SjCafe;

public class SjCafeRegProcController implements SjController {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("SjCafeRegProcController~~~~~~~");
		
		//path만들기
//		String path = "sjcafe/upload";
//		ServletContext ctx = request.getServletContext();
//		path = ctx.getRealPath(path);
//		System.out.println("Real path: "+path);
		
		//이미지 업로드
		String path="C:\\javabigsetjsp2023\\jsp_work\\jspWeb18_semi_proj_lsj"
				+ "\\src\\main\\webapp\\sjcafe\\upload";
		
		//multipart형식으로 데이터 받기
		MultipartRequest req = new MultipartRequest(request, path, 10*1024*1024, "utf-8", new DefaultFileRenamePolicy());
		String uid = req.getParameter("uid");
//		String sjwriter = req.getParameter("writer");
		String sjtitle = req.getParameter("title");
		String sjcontent = req.getParameter("content");
		String sjfile = req.getFilesystemName("file");
		
		
		//System.out.println(title+":"+file);
		
		SjCafe sj = new SjCafe();
		sj.setSjwriter(uid);
//		sj.setSjwriter(sjwriter);
		sj.setSjtitle(sjtitle);
		sj.setSjcontent(sjcontent);
		sj.setSjfile(sjfile);
						 
	 
		 SjCafeDao dao = new SjCafeDao();
		 dao.write(sj);
	 		 
		//목록으로 이동
		response.sendRedirect("board.do");		
				
	}

}
