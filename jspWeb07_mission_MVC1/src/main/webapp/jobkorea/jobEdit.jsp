<%@page import="jobkorea.dao.jobNoticeDao"%>
<%@page import="jobkorea.vo.jobNotice"%>
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
</head>
<body>
<h3>jobEdit</h3>
<%
String no = request.getParameter("c");

String sql = "select no,work,company,title,career,academic_ability,"
		+"prefer_basic,prefer_language,employment_type,salary,location,time,"
		+"position from jobhm where no=" + no;

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

<form action="jobEditProc.jsp" method="post">
	<table class="twidth" width="800" border="1">
		<colgroup>
			<col width="15%" />
			<col width="35%" />
			<col width="15%" />
			<col width="35%" />

		</colgroup>
		<caption>
			<%=rs.getString("company")%>
		</caption>
		<caption>
			<input type="text" class="ss" name="title" value="<%=rs.getString("title")%>" />
		</caption>	
					
		
		<tbody>
			<tr>
				<td colspan="2">지원자격</td>
				<td colspan="2">근무조건</td>
			</tr>
			<tr>
				<td>경력</td>
				<td><input type="text" name="career" value="<%=rs.getString("career")%>" /></td>
				<td>고용형태</td>
				<td><input type="text" name="employment_type" value="<%=rs.getString("employment_type")%>" /></td>
				
			</tr>
			<tr>
				<td>학력</td>
				<td><input type="text" name="prefer_basic" value="<%=rs.getString("prefer_basic")%>" /></td>
				<td>급여</td>
				<td><input type="text" name="salary" value="<%=rs.getString("salary")%>" /></td>
			</tr>
			<tr>
				<td>지역</td>
				<td><input type="text" name="location" value="<%=rs.getString("location")%>" /></td>
				<td>시간</td>
				<td><input type="text" name="time" value="<%=rs.getString("time")%>" /></td>
			</tr>
			


		</tbody>
	</table>
	
	<input type="hidden" name="c" value="<%=rs.getString("no")%>" />
	<input type="submit" value="수정하기" />
	<a href="jobDetail.jsp?c=<%=rs.getString("no")%>">취소</a>
</form>

</body>
</html>
