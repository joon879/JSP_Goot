<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>hobbyForm</h3>


	<%
	if(session.getAttribute("habun")==null){
	%>
	
	<form action="hobbyTest.jsp">
		학번: <input type="text" id="habun" name="habun" placeholder="id" /><br /> 
		패스워드: <input type="password" id="stupass" name="stupass" /> <br />
		취미: <input type="text" id="stuhobby" name="stuhobby"/>
				<input type="submit" value="login" />

	</form>
	
	<%
	}
	else{
	%>
	<form action="hobbylogout.jsp">
	    <input type="submit" value="logout" />	
	</form>	
	<%
	}
	%>
	
	<%
	out.print("session: "+session.getAttribute("habun"));%>
	<br />
	<%
	out.print("session: "+session.getAttribute("stuhobby"));
	%>
	
	
</body>
</html>