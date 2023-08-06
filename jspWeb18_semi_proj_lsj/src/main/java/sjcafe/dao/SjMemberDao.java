package sjcafe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import sjcafe.db.SjDBCon;
import sjcafe.vo.SjMember;

public class SjMemberDao {
	
	public SjMember getSjMember(String uid) throws Exception {
		
		//회원DB의 id중 uid에 해당하는 데이터 조회
		String sql = "select sjid, sjpwd, sjname, sjgender, sjbirth, "
				+ "sjis_lunar, sjcphone, sjemail, sjhabit, sjregdate "
				+ "from sjmember where sjid=?";
		
		Connection con = SjDBCon.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, uid);
		
		ResultSet rs = pstmt.executeQuery();
		
		SjMember m = null;
		if(rs.next()) {
			m = new SjMember();
			m.setSjid(rs.getString("sjid"));
			m.setSjpwd(rs.getString("sjpwd"));
			System.out.println("id: "+m.getSjid());
		}
				
		
		return m;
		
	}
	
	public void joinSjMember(SjMember sj) throws Exception {
		
		String sql = "insert into sjmember values("
				+"?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
		
		Connection con = SjDBCon.getConnection();
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, sj.getSjid());
		pstmt.setString(2, sj.getSjpwd());
		pstmt.setString(3, sj.getSjname());
		pstmt.setString(4, sj.getSjgender());
		pstmt.setString(5, sj.getSjbirth());
		pstmt.setString(6, sj.getSjis_lunar());
		pstmt.setString(7, sj.getSjcphone());
		pstmt.setString(8, sj.getSjemail());
		pstmt.setString(9, sj.getSjhabit());
		pstmt.executeUpdate();
		
		pstmt.close();
		con.close();
	
	}
}
