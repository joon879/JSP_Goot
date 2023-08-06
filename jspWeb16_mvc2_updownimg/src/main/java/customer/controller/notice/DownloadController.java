package customer.controller.notice;

import java.io.FileInputStream;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class DownloadController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("DownloadController~~~~~~~~~~~~~~~");
		
		//p, f는 noticeDetail에서 가져온다.
		String path = request.getParameter("p"); 
		String fname = request.getParameter("f");
		String urlPath = path + fname;
		String realPath = request.getServletContext().getRealPath(urlPath);
		System.out.println("realPath:" + realPath);
		
		//이 코드가 없으면 브라우저에서 파일이 열린다.
		response.setHeader("Content-Disposition", "attachment;filename="+new String(fname.getBytes(),"ISO8859_1"));
		
		
		
		//io 입출력 처리
		FileInputStream fin = new FileInputStream(realPath);
		ServletOutputStream sout = response.getOutputStream();
		
		byte[] buf = new byte[1024];
		int size = 0;
		while ((size=fin.read(buf, 0, 1024))!=-1) {
			//인풋으로 가져올 때 버퍼크기(1024)만큼씩 여러번 떠오는데 -1이 아닐 때까지(= 가져올 파일이 남아있을 때까지) 루프를 돌린다.
			sout.write(buf, 0, size);
		}
		fin.close();
		sout.close();
		
		
		
//		request.getRequestDispatcher("notice.jsp").forward(request, response);
		
	}
}
