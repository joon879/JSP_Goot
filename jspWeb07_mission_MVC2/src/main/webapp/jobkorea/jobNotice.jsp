<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>jobNotice</h3>
<%
String sql = "select no,work,company,title,career,academic_ability,"
+"prefer_basic,prefer_language,employment_type,salary,location,time,"
+"position from jobhm order by to_number(no) desc";

//DB 연결
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "hr";
String pw = "123456";
Connection con = DriverManager.getConnection(url, user, pw);

//실행
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);

//rs.next();
//System.out.print(rs.getString("title"));
%>
	
<table width="800" border="1">
<%
	while (rs.next()) {
%>
	
	<tr>
		<td rowspan="3"><%=rs.getString("company")%></td>
		<td colspan="2"><a href="jobDetail.do?c=<%=rs.getString("no")%>"><%=rs.getString("title")%></a></td>	
	</tr>
	<tr>
		<td><%=rs.getString("career")%>&nbsp&nbsp<%=rs.getString("prefer_basic")%>&nbsp&nbsp<%=rs.getString("employment_type")%>
		&nbsp&nbsp<%=rs.getString("location")%>&nbsp&nbsp<%=rs.getString("time")%></td>
		<td><input type="button" value="즉시지원" onclick=""/></td>
	</tr>
	<tr>
		<td colspan="2"><%=rs.getString("work")%></td>
		
	</tr>
	<%
	}
	%>

</table>

<a href="jobReg.do">공고 등록</a>


</body>
</html>

<%
rs.close();
stmt.close();
con.close();
%>
