<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String name = request.getParameter("name");
String age = request.getParameter("age");
String fruits = request.getParameter("fruits");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>fruitsResult</h2>

	
	<img src="../img/<%=fruits %>.png" alt="사과" />
	<br />
	<hr />
	
	<%
	String strFruits = "";
	if (fruits.equals("apple")) {
		strFruits = "사과";
	} else if (fruits.equals("banana")) {
		strFruits = "바나나";
	}
		
	%>

	<h3>
		<%=name%>(<%=age %>세)님은 <%=strFruits %> 과일을 좋아합니다.
		
	</h3>



</body>
</html>