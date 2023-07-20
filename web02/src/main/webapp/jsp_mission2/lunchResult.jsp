<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>lunchResult</h2>

	<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String lunch = request.getParameter("lunch");
	String lunch2 = request.getParameter("lunch2");

	String lmenu = "";
	if (lunch.equals("blackbeannoodle")) {
		lmenu = "짜장면";
	} else if (lunch.equals("chambong")) {
		lmenu = "짬뽕";
	} else if (lunch.equals("friedrice")) {
		lmenu = "볶음밥";
	}
	%>

	<%=id%>
	<br />
	<%=pass%>
	<br />
	<%=lunch%>
	<br />
	<h3>
		<%=id%>님의 점심메뉴는
		<%=lmenu%>입니다.
	</h3>
	<hr />
	<%=lunch2%>


</body>
</html>