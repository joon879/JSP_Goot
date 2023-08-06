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

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Insert title here</title>
</head>
<body>
<h3>notice.jsp</h3>

<%
/*
String sql = "select seq, title, writer, content, regdate, hit from notices order by to_number(seq) desc";
//DB 연결
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "hr";
String pw = "123456";
Connection con = DriverManager.getConnection(url, user, pw);

//실행
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);
*/

%>

	<table width="500" border="1">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>작성일</td>
			<td>조회수</td>
		</tr>
		
<%--
	<%
	while (rs.next()) {
	%> 
--%>
		
<c:forEach  items="${list }" var="n">
		<tr>
			<td>${n.seq }</td>
			<td><a href="noticeDetail.do?c=${n.seq }">${n.title }</a></td>
			<td>${n.writer }</td>
			<td>${n.regdate }</td>
			<td>${n.hit }</td>
		</tr>
</c:forEach>


<%-- 
	<%
	}
	%>
--%>

	</table>

	<a href="noticeReg.do">글쓰기</a>


</body>
</html>

