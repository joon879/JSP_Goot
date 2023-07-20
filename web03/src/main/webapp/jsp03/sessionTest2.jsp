<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>sessionTest2.jsp</h3>
	<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	%>
	
	<%=id %> <br />
	<%=pass %> <br />
	
	<%
	//response.sendRedirect("logout2.jsp");
	%>
	
	<!-- 포워딩 -->
	<jsp:forward page="logout2.jsp" />
	
	
	
</body>
</html>