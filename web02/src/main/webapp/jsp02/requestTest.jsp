<%@page import="java.net.Inet4Address"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>requestTest</h2>

	<%
	request.setCharacterEncoding("utf8");
	
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String hobby = request.getParameter("hobby");

	if (gender.equals("m")) {
		gender = "남성";
	} else if (gender.equals("f")) {
		gender = "여성";
	}
	
	/* url(Uniform Resource Locator)
	uri(Uniform Resource Identifier) 식별자 역할 */
	
	String uri = request.getRequestURI();
	StringBuffer url = request.getRequestURL();
	String ctxPath = request.getContextPath();
	String mod = request.getMethod();
	String addr6 = request.getRemoteAddr(); //ip Ver.6
	String addr4 = Inet4Address.getLocalHost().getHostAddress(); // ip Ver.4
	
	%>

	<%=name%> <br />
	<%=age%> <br />
	<%=gender%>	<br />
	<%=hobby%>
	<br />
	uri: <%=uri  %> <br />
	url: <%=url  %> <br />
	ctxPath: <%=ctxPath  %> <br />
	mod: <%=mod  %> <br />
	addr6: <%=addr6  %> <br />
	addr4: <%=addr4  %> <br />
	

</body>
</html>