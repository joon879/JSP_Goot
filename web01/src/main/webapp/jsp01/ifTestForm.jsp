<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>ifTest</h2>

	<form action="declareTest.jsp" method="get">
	<!-- 메소드 방식: get(검색어를 주소뒤에), post(이동페이지로) -->
	
		<label for="name">이름</label>
		<!-- 텍스트 이름을 클릭하면 커서가 입력칸으로 이동 -->
		
		<input type="text" id="name" name="name" placeholder="홍길동" autofocus
			required /> <input type="submit" value="확인" />

	</form>
</body>
</html>