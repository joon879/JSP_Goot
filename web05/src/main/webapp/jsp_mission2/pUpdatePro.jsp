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
	<h3>pUpdatePro</h3>
	<%
request.setCharacterEncoding("UTF-8");

int pno = Integer.parseInt(request.getParameter("pno"));
String pname = request.getParameter("pname");
String pinfo = request.getParameter("pinfo");
int pprice = Integer.parseInt(request.getParameter("pprice"));
String pdate = request.getParameter("sysdate");
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
	
	//pno를 조건으로 pname, pinfo, pprice, pdate 변경
	sql="update productinfo set pname=?, pinfo=?, pprice=?, pdate=sysdate where pno=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, pname);
	pstmt.setString(2, pinfo);
	pstmt.setInt(3, pprice);
	/* pstmt.setString(4, pdate); */
	pstmt.setInt(4, pno);
	
	//실행
	pstmt.executeUpdate();//insert 실행
	System.out.println("수정성공");
	
}catch(Exception e){
	out.print("수정실패");
	e.printStackTrace();
}finally{
	//자원 회수
	if(pstmt!=null) try{pstmt.close();} catch(Exception e2){}
	if(conn!=null) try{conn.close();} catch(Exception e2){}
}
response.sendRedirect("pSelectPro.jsp");
%>


<%=pno %> <br />
<%=pname %> <br />
<%=pinfo %> <br />
<%=pprice %> <br />
<%=pdate %> <br />
</body>
</html>