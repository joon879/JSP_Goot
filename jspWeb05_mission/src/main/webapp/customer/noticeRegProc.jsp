<%@page import="customer.dao.NoticeDao"%>
<%@page import="customer.vo.Notice"%>
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
<h3>noticeRegProc</h3>
<%
request.setCharacterEncoding("utf-8");
String title = request.getParameter("title");
String content = request.getParameter("content");

/* 
//insert 작업
String sql = "insert into notices values("
	+"(select max(to_number(seq))+1 from notices)"
	+", ?, 'cj', ?, sysdate, 0)";

//DB 연결
Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";
Connection con = DriverManager.getConnection(url, user, pw);

//실행
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, title);
pstmt.setString(2, content);
pstmt.executeUpdate();
 */
 
 Notice n = new Notice();
 n.setTitle(title);
 n.setContent(content);
 
 
 NoticeDao dao = new NoticeDao();
 dao.write(n);
 
 
//목록으로 이동
response.sendRedirect("notice.jsp");


%>

</body>
</html>
