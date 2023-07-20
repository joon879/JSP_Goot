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
	<h3>jdbcTest</h3>
	<%
	Connection conn = null;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	
	boolean connect = false;
	
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "hr", "123456");
		connect = true;
		
	}catch(Exception e){
		connect = false;
		e.printStackTrace();	
	}
	
	%>
	
	<%
	if(connect){
	%>
	
	<h3>연결 성공</h3>
	
	<%	
	}else{
	%>
	
	<h3>연결 실패</h3>	
	
	<%	
	}
	%>
</body>
</html>