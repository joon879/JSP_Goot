<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<style>
table {
	width: 500px;
	border: 2px solid red;
	border-collapse: collapse;
	]
}

table tr td {
	border: 2px solid green;
}
</style>
	<%
	int[] haknos = { 401, 402, 402, 502, 501 };
	String[] lectures = { "데이터베이스", "데이터베이스", "스포츠경영학", "자료구조", "자료구조" };
	String[] rooms = { "공학관110", "공학관110", "체육관103", "공학관111", "공학관111" };
	double[] scores = { 3.5, 4.0, 3.5, 4.0, 3.5 };
	%>

	<table>
		<tr>
			<td>학생번호</td>
			<td>강좌이름</td>
			<td>강의실</td>
			<td>성적</td>
		</tr>
		<%
		for (int i = 0; i < lectures.length; i++) {
		%>
		<tr>

			<td><%=haknos[i]%></td>
			<td><%=lectures[i]%></td>
			<td><%=rooms[i]%></td>
			<td><%=scores[i]%></td>
		</tr>
		<%
		}
		%>
	</table>
	<hr>
	<%
	int x = 10;
	int y = (x>=10) ? 20 : x; //삼항연산자
	out.print("y값: "+ y); //출력
	%>
	
</body>
</html>