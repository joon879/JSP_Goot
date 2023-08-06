package sjcafe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import sjcafe.db.SjDBCon;
import sjcafe.vo.SjCafe;

public class SjCafeDao {
	
	//글쓰기 메소드
	public void write(SjCafe sj) throws Exception {
		//insert
		String sql = "insert into sjnavercafe values("
				+"(select max(to_number(sjno))+1 from sjnavercafe)"
				+", ?, ?, ?, sysdate, 0, 0, ?)";
		
		// DB 연결
		Connection con = SjDBCon.getConnection();
		
		//실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, sj.getSjtitle());
		pstmt.setString(2, sj.getSjwriter());
		pstmt.setString(3, sj.getSjcontent());
//		pstmt.setInt(3, sj.getSjhit());
//		pstmt.setInt(4, sj.getSjlike());
		pstmt.setString(4, sj.getSjfile());
		pstmt.executeUpdate();
		
		pstmt.close();
		con.close();
	}
	
	
	//업데이트(글 수정) 메소드
	public void update(SjCafe sj) throws Exception {

		String sql = "update sjnavercafe " + "set sjtitle=?, sjcontent=? where sjno=?";

		// DB 연결
		Connection con = SjDBCon.getConnection();

		// 실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, sj.getSjtitle());
		pstmt.setString(2, sj.getSjcontent());
		pstmt.setString(3, sj.getSjno());
		pstmt.executeUpdate();

		pstmt.close();
		con.close();
	}
	
	
	//삭제 메소드
	public int delete(String sjno) throws Exception {
		String sql = "delete from sjnavercafe where sjno =" + sjno;

		//DB 연결
		Connection con = SjDBCon.getConnection();

		//실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		int del = pstmt.executeUpdate();
		
		return del;
	}
	
		
	//검색 메소드
	public List<SjCafe> sjcafeSelAll(String field, String query) throws Exception {
		
		String sql = "select sjno, sjtitle, sjwriter, sjcontent, sjdate, "
				+"sjhit, sjlike, sjfile from sjnavercafe "
				+"where "+field+" like ? "
				+"order by to_number(sjno) desc";
		
		//DB연결
		Connection con = SjDBCon.getConnection();
		
		//실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, "%"+query+"%");
		ResultSet rs = pstmt.executeQuery();
		
		List<SjCafe> list = new ArrayList<SjCafe>();
		while(rs.next()) {
			SjCafe sj = new SjCafe();
			sj.setSjno(rs.getString("sjno"));
			sj.setSjtitle(rs.getString("sjtitle"));
			sj.setSjwriter(rs.getString("sjwriter"));
			sj.setSjcontent(rs.getString("sjcontent"));
			sj.setSjdate(rs.getDate("sjdate"));
			sj.setSjhit(rs.getInt("sjhit"));
			sj.setSjlike(rs.getInt("sjlike"));
			sj.setSjfile(rs.getString("sjfile"));
			
			list.add(sj); //각각의 리스트에 sj를 넣는다.(한 줄씩)
		}
		
		
		return list;
		
	}


	//디테일(상세) 화면 메소드
	public SjCafe getSjCafe(String sjno) throws Exception {
	
	String sql = "select sjno, sjtitle, sjwriter, sjcontent, sjdate, "
			+"sjhit, sjlike, sjfile from sjnavercafe "
			+"where sjno="+sjno;
	
	//DB연결
	Connection con = SjDBCon.getConnection();
	
	//실행
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
	
	SjCafe sj = new SjCafe();
	sj.setSjno(rs.getString("sjno"));
	sj.setSjtitle(rs.getString("sjtitle"));
	sj.setSjwriter(rs.getString("sjwriter"));
	sj.setSjcontent(rs.getString("sjcontent"));
	sj.setSjdate(rs.getDate("sjdate"));
	sj.setSjhit(rs.getInt("sjhit"));
	sj.setSjlike(rs.getInt("sjlike"));
	sj.setSjfile(rs.getString("sjfile"));
	
	rs.close();
	stmt.close();
	con.close();
	
	return sj;
	}
	
	
	//상세(디테일) 화면 메소드2
	public SjCafe getSjCafe(String sjno, String sjhit) throws Exception {
		
		//hit 조회수 업데이트, hitUpdate()메소드로 플러스.
		int hnum = Integer.parseInt(sjhit);
		hitUpdate(sjno, hnum);
		
		String sql = "select sjno, sjtitle, sjwriter, sjcontent, sjdate, "
				+"sjhit, sjlike, sjfile from sjnavercafe "
				+"where sjno="+sjno;
		
		//DB연결
		Connection con = SjDBCon.getConnection();
		
		//실행
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		
		SjCafe sj = new SjCafe();
		sj.setSjno(rs.getString("sjno"));
		sj.setSjtitle(rs.getString("sjtitle"));
		sj.setSjwriter(rs.getString("sjwriter"));
		sj.setSjcontent(rs.getString("sjcontent"));
		sj.setSjdate(rs.getDate("sjdate"));
		sj.setSjhit(rs.getInt("sjhit"));
		sj.setSjlike(rs.getInt("sjlike"));
		sj.setSjfile(rs.getString("sjfile"));
		
		rs.close();
		stmt.close();
		con.close();
		
		return sj;
	}
	

	//조회수 업데이트 메소드
	public void hitUpdate(String sjno, int hnum) throws Exception {
		
		System.out.println("Hit upupupupup!!!");
		
		//DB연결
		Connection con = SjDBCon.getConnection();
		
		String sql = "update sjnavercafe set sjhit = ? where sjno = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, hnum+1);
		pstmt.setString(2, sjno);
		pstmt.executeUpdate();
	}
	
	
	//좋아요 업데이트 메소드(구현중)
	public void likeUpdate(String sjno, int lnum) throws Exception {
		
		System.out.println("like upupupupupup!!!");
		
		//DB연결
		Connection con = SjDBCon.getConnection();
		
		String sql = "update sjnavercafe set sjlike = ? where sjno = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, lnum+1);
		pstmt.setString(2, sjno);
		pstmt.executeUpdate();
	}
	
}
