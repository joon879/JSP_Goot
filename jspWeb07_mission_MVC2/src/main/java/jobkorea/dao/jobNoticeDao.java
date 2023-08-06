package jobkorea.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import jobkorea.db.DBCon;
import jobkorea.vo.jobNotice;

public class jobNoticeDao {
	
	public void write(jobNotice n) throws Exception {
		String sql = "insert into jobhm values("
				+"(select max(to_number(no))+1 from jobhm)"
				+", ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		// DB 연결, DBCon.java로 이동!
//		Class.forName("oracle.jdbc.driver.OracleDriver");
//		String url = "jdbc:oracle:thin:@localhost:1521:xe";
//		String user = "hr";
//		String pw = "123456";
//		Connection con = DriverManager.getConnection(url, user, pw);
		
		Connection con = DBCon.getConnection();

		
		// 실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, n.getWork());
		pstmt.setString(2, n.getCompany());
		pstmt.setString(3, n.getTitle());
		pstmt.setString(4, n.getCareer());
		pstmt.setString(5, n.getAcademic_abilty());
		pstmt.setString(6, n.getPrefer_basic());
		pstmt.setString(7, n.getPrefer_language());
		pstmt.setString(8, n.getEmployment_type());
		pstmt.setString(9, n.getSalary());
		pstmt.setString(10, n.getLocation());
		pstmt.setString(11, n.getTime());
		pstmt.setString(12, n.getPosition());
		pstmt.executeUpdate();

		pstmt.close();
		con.close();
	}
	
	public void update(jobNotice jnotice) throws Exception {
		String sql = "update jobhm set title=?, career=?, employment_type=?,"
				+"prefer_basic=?, salary=?, location=?, time=?"
				+"where no=?";


		// DB 연결, DBCon.java로 이동!
//		Class.forName("oracle.jdbc.driver.OracleDriver");
//		String url = "jdbc:oracle:thin:@localhost:1521:xe";
//		String user = "hr";
//		String pw = "123456";
//		Connection con = DriverManager.getConnection(url, user, pw);
		
		Connection con = DBCon.getConnection();


		//실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, jnotice.getTitle());
		pstmt.setString(2, jnotice.getCareer());
		pstmt.setString(3, jnotice.getEmployment_type());
		pstmt.setString(4, jnotice.getPrefer_basic());
		pstmt.setString(5, jnotice.getSalary());
		pstmt.setString(6, jnotice.getLocation());
		pstmt.setString(7, jnotice.getTime());
		pstmt.setString(8, jnotice.getNo());
		pstmt.executeUpdate();

		pstmt.close();
		con.close();
	}
	
	public int delete(String no) throws Exception {
		String sql = "delete from jobhm where no =" + no;

		// DB 연결, DBCon.java로 이동!
//		Class.forName("oracle.jdbc.driver.OracleDriver");
//		String url = "jdbc:oracle:thin:@localhost:1521:xe";
//		String user = "hr";
//		String pw = "123456";
//		Connection con = DriverManager.getConnection(url, user, pw);
		
		Connection con = DBCon.getConnection();

		
		//실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		int del = pstmt.executeUpdate();
		
		return del;
	}
	
	public jobNotice getNotice(String no) throws Exception {
		String sql = "select no,work,company,title,career,academic_ability,"
				+"prefer_basic,prefer_language,employment_type,salary,location,time,"
				+"position from jobhm where no=" + no;
		
		// DB 연결, DBCon.java로 이동!
//		Class.forName("oracle.jdbc.driver.OracleDriver");
//		String url = "jdbc:oracle:thin:@localhost:1521:xe";
//		String user = "hr";
//		String pw = "123456";
//		Connection con = DriverManager.getConnection(url, user, pw);
		
		Connection con = DBCon.getConnection();

		
		//실행
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		

		jobNotice n = new jobNotice();
		n.setNo(rs.getString("no"));
		n.setCompany(rs.getString("company"));
		n.setTitle(rs.getString("title"));
		n.setCareer(rs.getString("career"));
		n.setEmployment_type(rs.getString("employment_type"));
		n.setPrefer_basic(rs.getString("prefer_basic"));
		n.setSalary(rs.getString("salary"));
		n.setLocation(rs.getString("location"));
		n.setTime(rs.getString("time"));
		
		rs.close();
		stmt.close();
		con.close();
		
		return n;
		
		
	}
	
	
}
