<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>insertPro</h3>
<%
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String addr = request.getParameter("addr");
/* 전달받은 내용을 DB에 입력
db에 연동 */

Connection conn=null;
PreparedStatement pstmt=null;
String sql="";

try {
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String driver="oracle.jdbc.driver.OracleDriver";
	String user="hr";
	String pass="123456";
	Class.forName(driver);
	conn=DriverManager.getConnection(url,user,pass);
	
	sql="insert into member1 values(?,?,?,?)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,id);//varchar2타입이므로 setString, int타입은 setInt
	pstmt.setString(2,pw);
	pstmt.setString(3,name);
	pstmt.setString(4,addr);
	
	//실행
	pstmt.executeUpdate();//insert 실행
	System.out.println("입력성공");
	
}catch(Exception e){
	out.print("입력실패");
	e.printStackTrace();
}finally{
	//자원 회수
	if(pstmt!=null) try{pstmt.close();} catch(Exception e2){}
	if(conn!=null) try{conn.close();} catch(Exception e2){}
}
response.sendRedirect("selectPro.jsp");
%>


<%=id %> <br />
<%=pw %> <br />
<%=name %> <br />
<%=addr %> <br />

</body>
</html>