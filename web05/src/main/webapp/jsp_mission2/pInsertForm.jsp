<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>pInsertForm</h3>
	<h3>데이터 추가</h3>
	<form action="pInsertPro.jsp" method="post">
	<!-- 상품번호: <input type="text" id="pno" name="pno"/> <br /> -->
	상품명: <input type="text" id="pname" name="pname"/> <br />
	상품간략소개: <input type="text" id="pinfo" name="pinfo"/> <br />
	상품가격: <input type="text" id="pprice" name="pprice"/> <br />
	<!-- 등록일: <input type="text" id="pdate"/> -->
	<input type="submit" value="insert" /> <br />
	
		
	</form>
</body>
</html>