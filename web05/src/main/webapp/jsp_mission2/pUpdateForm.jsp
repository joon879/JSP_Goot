<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>pUpdateForm</h3>
	<h3>데이터 수정</h3>
	<form action="pUpdatePro.jsp" method="post">
	pno : <input type="text" id="pno" name="pno" /> <br />
	pname : <input type="text" id="pname" name="pname" /> <br />
	pinfo : <input type="text" id="pinfo" name="pinfo" /> <br />
	pprice : <input type="text" id="pprice" name="pprice" /> <br />
	<!-- pdate : <input type="text" id="pdate" name="pdate" /> <br /> -->
	<input type="submit" value="update" /> <br />
	


	</form>
</body>
</html>