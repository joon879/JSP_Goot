<%@page import="java.sql.ResultSet"%>
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
<h3>selectPro</h3>
<h3>데이터 조회</h3>
<table border="1" width="500">
	<tr>
		<td>아이디</td>
		<td>비번</td>
		<td>이름</td>
		<td>주소</td>
	</tr>
	<!-- 아래 tr 반복 -->
<%
Connection conn=null;
PreparedStatement pstmt=null;
ResultSet rs=null;
String sql="";

try {
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String driver="oracle.jdbc.driver.OracleDriver";
	String user="hr";
	String pass="123456";
	Class.forName(driver);
	conn=DriverManager.getConnection(url,user,pass);
	
	sql="select id,pw,name,addr from member1";
	pstmt=conn.prepareStatement(sql);
	//실행 resultset으로 데이터 저장됨
	rs=pstmt.executeQuery();
	
	
	
}catch(Exception e){
	out.print("삭제실패");
}

while(rs.next()){
%>
	<tr>
		<!-- "select id,pw,addr,name from member1" 순서 중요함
		 		쿼리에 쓰여 있는 순서대로 적용됨 -->
		<td><%=rs.getString(1) %></td> 
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<!-- 순서 상관없음 -->
		<%-- <td><%=rs.getString("id") %></td>
		<td><%=rs.getString("pw") %></td>
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getString("addr") %></td> --%>
	</tr>
<%
}
%>
</table>
<hr />
<a href="insertForm.jsp">목록 추가</a> &nbsp;&nbsp;
<a href="updateForm.jsp">수정</a> &nbsp;&nbsp;
<a href="deleteForm.jsp">삭제</a>

</body>
</html>