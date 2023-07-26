<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>login</h2>
<script>
	function loginCheck(){
		//alert("aa");
		window.open("login_check.jsp", "", "width=300, height=200, titlebar=0");
		
	}

</script>
<form action="" name="frm">
	<table>
		<tr>
			<td>아이디 <input type="text" id="id" size="8" /></td>
			<td rowspan="2">
				<input type="button" value="login" onclick="loginCheck(this.form)" />
			</td>
		</tr>
		<tr>
			<td >암호 <input type="password" id="pwd" name="pwd" size="8" /></td>
		</tr>
	</table>

</form>

</body>
</html>