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
<h3>jobEditProc</h3>
<%
request.setCharacterEncoding("utf-8");
String no = request.getParameter("c");
String title = request.getParameter("title");
String career = request.getParameter("career");
String employment_type = request.getParameter("employment_type");
String prefer_basic = request.getParameter("prefer_basic");
String salary = request.getParameter("salary");
String location = request.getParameter("location");
String time = request.getParameter("time");


/*
String sql = "update jobhm set title=?, career=?, employment_type=?,"
		+"prefer_basic=?, salary=?, location=?, time=?"
		+"where no="+no;


//DB 연결
Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";
Connection con = DriverManager.getConnection(url, user, pw);


//실행
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, title);
pstmt.setString(2, career);
pstmt.setString(3, employment_type);
pstmt.setString(4, prefer_basic);
pstmt.setString(5, salary);
pstmt.setString(6, location);
pstmt.setString(7, time);
pstmt.executeUpdate();
*/

jobNotice n = new jobNotice();
n.setTitle(title);
n.setCareer(career);
n.setPrefer_basic(prefer_basic);
n.setEmployment_type(employment_type);
n.setSalary(salary);
n.setLocation(location);
n.setTime(time);
n.setNo(no);

jobNoticeDao dao = new jobNoticeDao();
dao.update(n);


response.sendRedirect("jobDetail.jsp?c="+no);
		

%>

</body>
</html>

