<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>hobbyTest.jsp</h3>
	
	<%
	String habun = request.getParameter("habun");
	String stupass = request.getParameter("stupass");
	String stuhobby = request.getParameter("stuhobby");
	
	%>
	
	<%=habun %> <br />
	<%=stupass %> <br />
	<%=stuhobby %> <br />
	
	<%
	if(habun.equals("blue")&&stupass.equals("1234")){
		session.setAttribute("habun", habun);
		session.setAttribute("stuhobby", stuhobby);
	}
	
	response.sendRedirect("hobbyForm.jsp");
	
	
	%>
	
	
	
</body>
</html>