package bowl.controller.board;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import bowl.controller.Controller;
import bowl.dao.BoardDao;
import bowl.vo.Board;

public class BoardRegProcController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BoardRegProcController~~~~~~~~~~");
		
		//path 만들기
		String path = "bowl/upload";
		ServletContext ctx = request.getServletContext();
		path = ctx.getRealPath(path);
		System.out.println("real path: "+ path);
		
		//멀티파트 형식으로 데이터 받기
		MultipartRequest req = new MultipartRequest(request, path, 10*1024*1024, "utf-8", new DefaultFileRenamePolicy());
//		request.setCharacterEncoding("utf-8");
//		String bwriter = request.getParameter("writer");
//		String btitle = request.getParameter("title");
//		String bcontent = request.getParameter("content");
		String uid = req.getParameter("uid");
//		String bwriter = req.getParameter("writer");
		String btitle = req.getParameter("title");
		String bcontent = req.getParameter("content");
		String file = req.getFilesystemName("file");
		
		
		
		Board b = new Board();
		b.setBwriter(uid);
//		b.setBwriter(bwriter);
		b.setBtitle(btitle);
		b.setBcontent(bcontent);
		b.setFilesrc(file);
		
		BoardDao dao = new BoardDao();
		dao.write(b);
		
		response.sendRedirect("board.do");
	}

}
