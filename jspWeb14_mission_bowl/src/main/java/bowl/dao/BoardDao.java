package bowl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bowl.vo.Board;
import bowl.db.DBCon;

public class BoardDao {

	public void write(Board b) throws Exception {
		// insert 작업
				String sql = "insert into bowlboard values(" + "(select max(to_number(bno))+1 from bowlboard)"
						+ ", ?, ?, ?, sysdate, 0)";

				// DB 연결
				Connection con = DBCon.getConnection();

				// 실행
				PreparedStatement pstmt = con.prepareStatement(sql);
				pstmt.setString(1, b.getBwriter());
				pstmt.setString(2, b.getBtitle());
				pstmt.setString(3, b.getBcontent());
				pstmt.executeUpdate();

				pstmt.close();
				con.close();
	}
	
	public void update(Board b) throws Exception {

		String sql = "update bowlboard " + "set btitle=?, bcontent=? where bno=?";

		// DB 연결
		Connection con = DBCon.getConnection();

		// 실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, b.getBtitle());
		pstmt.setString(2, b.getBcontent());
		pstmt.setString(3, b.getBno());
		System.out.println(b.getBwriter());
		System.out.println(b.getBtitle());
		pstmt.executeUpdate();

		pstmt.close();
		con.close();

	}
	
	public int delete(String bno) throws Exception {
		String sql = "delete from bowlboard where bno =" + bno;

		//DB 연결
		Connection con = DBCon.getConnection();

		//실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		int del = pstmt.executeUpdate();
		
		return del;
	}

	public Board getBoard(String bno) throws Exception {
		String sql = "select bno, bcnt, bwriter, bdate, "
				+ "btitle, bcontent from bowlboard where bno =" + bno;

		//DB 연결
		Connection con = DBCon.getConnection();

		//실행
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		
		Board b = new Board();
		b.setBno(rs.getString("bno"));
		b.setBcnt(rs.getInt("bcnt"));
		b.setBwriter(rs.getString("bwriter"));
		b.setBdate(rs.getDate("bdate"));
		b.setBtitle(rs.getString("btitle"));
		b.setBcontent(rs.getString("bcontent"));
		
		
		rs.close();
		stmt.close();
		con.close();
		
		return b;
	}
	
	//조회수 추가(파라미터 bcnt)
	public Board getBoard(String bno, String bcnt) throws Exception {
		
		int cnum = Integer.parseInt(bcnt);
		bcntupdate(bno, cnum);
		
		String sql = "select bno, bcnt, bwriter, bdate, "
				+ "btitle, bcontent from bowlboard where bno =" + bno;

		//DB 연결
		Connection con = DBCon.getConnection();

		//실행
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		
		Board b = new Board();
		b.setBno(rs.getString("bno"));
		b.setBcnt(rs.getInt("bcnt"));
		b.setBwriter(rs.getString("bwriter"));
		b.setBdate(rs.getDate("bdate"));
		b.setBtitle(rs.getString("btitle"));
		b.setBcontent(rs.getString("bcontent"));
		
		
		rs.close();
		stmt.close();
		con.close();
		
		return b;
	}
	
	//조회수 업데이트 메소드
	public void bcntupdate(String bno, int cnum) throws Exception {
		System.out.println("cnt upupupup!!");
		
		//update bowlboard set bcnt = bcnt+1 where bno='1'
		
		//DB 연결
		Connection con = DBCon.getConnection();
		String sql = "update bowlboard set bcnt = ? where bno= ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, cnum+1);
		pstmt.setString(2, bno);
		pstmt.executeUpdate();
	}
	
	
	
	//검색 메소드
	public List<Board> boardSelAll(String field, String query) throws Exception {
		
		String sql = "select bno, btitle, bcontent, bwriter, bdate, bcnt from bowlboard "
				+ "where "+field+" like ? "
				+ "order by to_number(bno) desc";
		
		//DB 연결
				Connection con = DBCon.getConnection();
				
				//실행
				//Statement stmt = con.createStatement();
				PreparedStatement pstmt = con.prepareStatement(sql);
				pstmt.setString(1, "%"+query+"%");
				ResultSet rs = pstmt.executeQuery();
				
				List<Board> list = new ArrayList<Board>();
				while(rs.next()) {
					Board b = new Board();
					b.setBno(rs.getString("bno"));
					b.setBcnt(rs.getInt("bcnt"));
					b.setBwriter(rs.getString("bwriter"));
					b.setBdate(rs.getDate("bdate"));
					b.setBtitle(rs.getString("btitle"));
					b.setBcontent(rs.getString("bcontent"));
					
					list.add(b); //각각의 리스트에 b를 넣는다.(한 줄씩)
				}
		
		
		return list;
	}	
}
