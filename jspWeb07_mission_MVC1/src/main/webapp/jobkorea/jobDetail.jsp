<%@page import="jobkorea.vo.jobNotice"%>
<%@page import="jobkorea.dao.jobNoticeDao"%>
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
<link rel="stylesheet" href="../css/job.css" />
</head>
<body>
<h3>jobDetail</h3>
<%
String no = request.getParameter("c");
/*
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
*/

jobNoticeDao dao = new jobNoticeDao();
jobNotice n = dao.getNotice(no);

%>
	<table class="twidth" width="800" border="1">
		<colgroup>
			<col width="15%" />
			<col width="35%" />
			<col width="15%" />
			<col width="35%" />

		</colgroup>
		<caption>
			<%=n.getCompany()%>
		</caption>
		<caption>
			<%=n.getTitle() %>
		</caption>	
					
		
		<tbody>
			<tr>
				<td colspan="2">지원자격</td>
				<td colspan="2">근무조건</td>
			</tr>
			<tr>
				<td>경력</td>
				<td><%=n.getCareer()%></td>
				<td>고용형태</td>
				<td><%=n.getEmployment_type()%></td>
			</tr>
			<tr>
				<td>학력</td>
				<td><%=n.getPrefer_basic()%></td>
				<td>급여</td>
				<td><%=n.getSalary()%></td>
			</tr>
			<tr>
				<td>지역</td>
				<td><%=n.getLocation()%></td>
				<td>시간</td>
				<td><%=n.getTime()%></td>
			</tr>
			


		</tbody>
	</table>
	<a href="jobEdit.jsp?c=<%=n.getNo()%>">수정</a>
	<a href="jobDelProc.jsp?c=<%=n.getNo()%>">삭제</a>
	<a href="jobNotice.jsp">목록</a>

</body>
</html>
