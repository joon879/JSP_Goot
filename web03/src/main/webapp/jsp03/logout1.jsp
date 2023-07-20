<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>logout.jsp</h3>
	<!-- 로그아웃 처리 -->
	
	<%
	session.invalidate();//모든 세션 제거
	//session.removeAttribute("id");//일부(id) 세션 제거
	
	response.sendRedirect("sessionTestForm1.jsp");
	
	
	%>
</body>
</html>