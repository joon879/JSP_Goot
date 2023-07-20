<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>fruitsForm</h2>
	<h3>좋아하는 과일 선택</h3>

	<form action="fruitsResult.jsp">
		<label for="name">이름</label>
		<input type="text" id="name" name="name" placeholder="홍길동" autofocus required /><br />
		<label for="age">나이</label>
		<input type="text" id="age" name="age" placeholder="20" autofocus required /><br />
		<label for="fruits">과일종류</labe>
		<br /> <select name="fruits" id="fruits">
			<option value="apple" selected>사과</option>
			<option value="banana">바나나</option>

		</select><br /> 
		<input type="submit" value="send" />
	</form>


	<!-- 이름 나이 과일선택(셀렉트 옵션)
	 ----------------------- 
	 3개의 정보를 받아서 그림으로 표현하고 누구님은
	x과일을 좋아합니다. 출력 -->

</body>
</html>