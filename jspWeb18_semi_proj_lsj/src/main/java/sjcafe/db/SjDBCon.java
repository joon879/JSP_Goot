package sjcafe.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SjDBCon {
	
	public static Connection getConnection() throws Exception {
		
		//DB연결
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "hr";
		String pw = "123456";
		Connection con = DriverManager.getConnection(url, user, pw);
		
		return con;
		
	}
}
