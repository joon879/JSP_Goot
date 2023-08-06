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
//String no = request.getParameter("c");
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

/*
jobNoticeDao dao = new jobNoticeDao();
jobNotice n = dao.getNotice(no);
*/

//jobNotice n = (jobNotice)request.getAttribute("n"); 
//이걸 지우고 EL태그 사용 
//결국 jsp파일 내에 자바 코드가 없어짐.
%>
	<table class="twidth" width="800" border="1">
		<colgroup>
			<col width="15%" />
			<col width="35%" />
			<col width="15%" />
			<col width="35%" />

		</colgroup>
		<caption>
			${n.company }
		</caption>
		<caption>
			${n.title }
		</caption>	
					
		
		<tbody>
			<tr>
				<td colspan="2">지원자격</td>
				<td colspan="2">근무조건</td>
			</tr>
			<tr>
				<td>경력</td>
				<td>${n.career }</td>
				<td>고용형태</td>
				<td>${n.employment_type }</td>
			</tr>
			<tr>
				<td>학력</td>
				<td>${n.prefer_basic }</td>
				<td>급여</td>
				<td>${n.salary }</td>
			</tr>
			<tr>
				<td>지역</td>
				<td>${n.location }</td>
				<td>시간</td>
				<td>${n.time }</td>
			</tr>
			


		</tbody>
	</table>
	<a href="jobEdit.do?c=${n.no }">수정</a>
	<a href="jobDelProc.do?c=${n.no }">삭제</a>
	<a href="jobNotice.jsp">목록</a>

</body>
</html>
