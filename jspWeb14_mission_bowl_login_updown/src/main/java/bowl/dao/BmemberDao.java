package bowl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bowl.db.DBCon;
import bowl.vo.Bmember;

public class BmemberDao {
	public Bmember getMember(String uid) throws Exception {
		//회원들 중 uid에 해당하는 데이터 조회
		String sql = "select id,pwd,name,gender,birth,is_lunar,"
				+ "cphone,email,habit,regdate from bmember"
				+ " where id=?";
				
		Connection con = DBCon.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, uid);
		
		ResultSet rs = pstmt.executeQuery();
		Bmember m = null;
		if(rs.next()) {
			m = new Bmember();
			m.setId(rs.getString("id"));
			m.setPwd(rs.getString("pwd"));
			System.out.println("id: "+m.getId());
		}
		
		return m;
	}
	
	public void joinMember(Bmember bm) throws Exception {
		
		//insert 작업
		String sql = "insert into bmember values(?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
		
		// DB 연결
		Connection con = DBCon.getConnection();
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, bm.getId());
		pstmt.setString(2, bm.getPwd());
		pstmt.setString(3, bm.getName());
		pstmt.setString(4, bm.getGender());
		pstmt.setString(5, bm.getBirth());
		pstmt.setString(6, bm.getIs_lunar());
		pstmt.setString(7, bm.getCphone());
		pstmt.setString(8, bm.getEmail());
		pstmt.setString(9, bm.getHabit());
		pstmt.executeUpdate();
		
		pstmt.close();
		con.close();
				
	}
}
