package customer.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import customer.vo.Notice;

public class NoticeDao {

	public void write(Notice n) throws Exception {
		//insert 작업
		String sql = "insert into notices values("
			+"(select max(to_number(seq))+1 from notices)"
			+", ?, 'cj', ?, sysdate, 0)";

		//DB 연결
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="hr";
		String pw="123456";
		Connection con = DriverManager.getConnection(url, user, pw);

		//실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, n.getTitle());
		pstmt.setString(2, n.getContent());
		pstmt.executeUpdate();
		
		pstmt.close();
		con.close();
	}
	
	public void update(Notice n) throws Exception {
		String sql = "update notices "
				+"set title=?, content=? where seq=?";

		//db 연결
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="hr";
		String pw="123456";
		Connection con = DriverManager.getConnection(url, user, pw);


		//실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, n.getTitle());
		pstmt.setString(2, n.getContent());
		pstmt.setString(3, n.getSeq());
		pstmt.executeUpdate();
		
		
		pstmt.close();
		con.close();
	}
	
	public void update2(String seq, String title, String content) throws Exception {
		String sql = "update notices "
				+"set title=?, content=? where seq=?";

		//db 연결
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="hr";
		String pw="123456";
		Connection con = DriverManager.getConnection(url, user, pw);


		//실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, seq);
		pstmt.executeUpdate();
		
		
		pstmt.close();
		con.close();
	}
}
