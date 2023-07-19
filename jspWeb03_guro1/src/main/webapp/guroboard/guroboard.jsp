<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
	<h3>guroboard</h3>
	<%
	String sql = "select seq, title, dept, writer, content, regdate, hit, att from guroboard order by to_number(seq) desc";
	//DB연결
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "hr";
	String pw = "123456";
	Connection con = DriverManager.getConnection(url, user, pw);
	
	//실행
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
	%>
	<table width="800" border="1">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>부서</td>
			<td>작성자</td>
			<td>작성일</td>
			<td>조회수</td>
			<td>파일</td>
		</tr>
		<%
		while(rs.next()){
		%>
		
		<tr>
			<td><%=rs.getString("seq") %></td>
			<td><a href="boardDetail.jsp?c=<%=rs.getString("seq")%>"><%=rs.getString("title") %></a></td>
			<td><%=rs.getString("dept")%></td>
			<td><%=rs.getString("writer")%></td>
			<td><%=rs.getDate("regdate") %></td>
			<td><%=rs.getInt("hit") %></td>
			<%-- <td><%=rs.getString("att") %></td> --%>
			<td><img src="../css/goo.png" alt="" width="15px"/></td>
		</tr>
		
		<%
		}
		%>
	
	</table>
	
	<a href="boardReg.jsp">글쓰기</a>
</body>
</html>

<%
rs.close();
stmt.close();
con.close();
%>