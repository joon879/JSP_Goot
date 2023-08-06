<%@page import="jobkorea.dao.jobNoticeDao"%>
<%@page import="jobkorea.vo.jobNotice"%>
<%@page import="java.sql.PreparedStatement"%>
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
<h3>jobRegProc</h3>

<%
/*
request.setCharacterEncoding("utf-8");
String work = request.getParameter("work");
String company = request.getParameter("company");
String title = request.getParameter("title");
String career = request.getParameter("career");
String academic_abilty = request.getParameter("academic_abilty");
String prefer_basic = request.getParameter("prefer_basic");
String prefer_language = request.getParameter("prefer_language");
String employment_type = request.getParameter("employment_type");
String salary = request.getParameter("salary");
String location = request.getParameter("location");
String time = request.getParameter("time");
String position = request.getParameter("position");
*/

/*
//insert 작업
String sql = "insert into jobhm values("
	+"(select max(to_number(no))+1 from jobhm)"
	+", ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

//DB 연결
Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";
Connection con = DriverManager.getConnection(url, user, pw);

//실행
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, work);
pstmt.setString(2, company);
pstmt.setString(3, title);
pstmt.setString(4, career);
pstmt.setString(5, academic_abilty);
pstmt.setString(6, prefer_basic);
pstmt.setString(7, prefer_language);
pstmt.setString(8, employment_type);
pstmt.setString(9, salary);
pstmt.setString(10, location);
pstmt.setString(11, time);
pstmt.setString(12, position);
pstmt.executeUpdate();
*/

/*
jobNotice n = new jobNotice(); 
n.setWork(work);
n.setCompany(company);
n.setTitle(title);
n.setCareer(career);
n.setAcademic_abilty(academic_abilty);
n.setPrefer_basic(prefer_basic);
n.setPrefer_language(prefer_language);
n.setEmployment_type(employment_type);
n.setSalary(salary);
n.setLocation(location);
n.setTime(time);
n.setPosition(position);

jobNoticeDao dao = new jobNoticeDao();
dao.write(n);

//목록으로 이동
response.sendRedirect("jobNotice.jsp");
*/

%>

</body>
</html>
