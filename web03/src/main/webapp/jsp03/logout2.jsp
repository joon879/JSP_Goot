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
	
	
	<!-- 파라미터 받기 -->
		<%
	String id = request.getParameter("id");
	
	%>
	
	id: <%=id %>
	
</body>
</html>