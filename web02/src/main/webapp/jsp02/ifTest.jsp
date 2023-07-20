<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String name = request.getParameter("name");
String color = request.getParameter("color");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>ifTest</h1>

	<%=name%>
	<br /> 이름:
	<%=name%>
	<br /> 색상:
	<%=color%>
	<br />


	<img src="../img/<%=color%>.png" alt="파랑" />
	<br />
	<hr />

	<div id="col"></div>
	<style>
#col {
	width: 100px;
	height: 100px;
	background: <%=color%>;
}
</style>

	<%
	String strCol = "";
	if (color.equals("blue")) {
		strCol = "파랑";
	} else if (color.equals("red")) {
		strCol = "빨강";
	} else if (color.equals("green")) {
		strCol = "초록";
	} else if (color.equals("yellow")) {
		strCol = "노랑";
	}
	%>
	<h3>
		<%=name  %>님 당신이 좋아하는 색상은
		<%=strCol%>입니다.
	</h3>

</body>
</html>
