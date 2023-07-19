<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bstyle.css" />
</head>
<body>
	<h3>boardEdit</h3>
	<%
	String seq = request.getParameter("c");
	String sql = "select seq, title, dept, writer, content, regdate, hit, att from guroboard where seq=" + seq;

	//DB 연결
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "hr";
	String pw = "123456";
	Connection con = DriverManager.getConnection(url, user, pw);
	
	//실행
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
	
	%>
	<form action="boardEditProc.jsp" method="post">
		<table class="twidth">
		<colgroup>
			<col width="15%"/>
			<col width="35%"/>
			<col width="15%"/>
			<col width="35%"/>
		
		
		</colgroup>
		<caption>Detail</caption>
		<tbody>
			<tr>
				<th class="left">글번호</th>
				<td><%=rs.getString("seq") %></td>
				<th class="left">조회수</th>
				<td><%=rs.getString("hit") %></td>
			</tr>
			<tr>
				<th class="left">작성자</th>
				<td><%=rs.getString("writer") %></td>
				<th class="left">작성시간</th>
				<td><%=rs.getString("regdate") %></td>
			</tr>
			<tr>
				<th class="left">부서</th>
				<td><%=rs.getString("dept") %></td>
			</tr>
			<tr>
				<th class="left">제목</th>
				<td colspan="3"><%=rs.getString("title")%></td>
			</tr>
			<tr>
				<th class="left">내용</th>
				<td colspan="3" id="content"><%=rs.getString("content")%></td>
			</tr>
			<tr>
				<th class="left">첨부</th>
				<td colspan="3">첨부</td>
			</tr>
				
		</tbody>	
	</table>
	<input type="hidden" name="c" value="<%=rs.getString("seq") %>" />
	<input type="submit" value="수정하기" />
	<a href="boardDetail.jsp?c=<%=rs.getString("seq")%>">취소</a>
		
	
	</form>
	
	
	
	
</body>
</html>