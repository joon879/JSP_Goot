<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>joinForm</h3>


<form action="joinProc.do">
	<label for="id">아이디</label>
	<input type="text" name="sjid" id="id" />
	<input type="button" value="중복확인" /> <br />
	
	<label for="pwd">비밀번호</label>
	<input type="text" name="sjpwd" id="pwd" /> <br />
	<label for="pwd2">비밀번호 확인</label>
	<input type="text" name="sjpwd2" id="pwd2" /> <br />
	
	<label for="name">이름</label>
	<input type="text" name="sjname" id="name" /> <br />
	
	<label for="gender">성별</label>
	<select name="sjgender" id="gender">
		<option value="남성">남성</option>
		<option value="여성">여성</option>
	</select> <br />
	<label for="">생년월일</label>
	<input type="text" name="sjyear" size="5" />년
	<input type="text" name="sjmonth" size="5" />월
	<input type="text" name="sjday" size="5" />일
	
	<input type="radio" name="sjIsLunar" value="양력" checked />양력
	<input type="radio" name="sjIsLunar" value="IsLunar" />음력 <br />
	
	<label for="cphone">핸드폰번호</label>
	<input type="tel" name="sjcphone" id="cphone"/> 예) 010-1111-2222 <br />
	<label for="email">이메일</label>
	<input type="email" name="sjemail" id="email" /> <br />
	
	<label for="habit">취미</label>
	<input type="checkbox" name="sjhabit" value="music" />음악
	<input type="checkbox" name="sjhabit" value="movie" />영화
	<input type="checkbox" name="sjhabit" value="trip" />여행 <br />
	
	<input type="submit" value="가입" />
	

</form>
</body>
</html>