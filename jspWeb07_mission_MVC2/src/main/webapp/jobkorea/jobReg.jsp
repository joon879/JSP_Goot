<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function gomain(){
		location.href="jobNotice.jsp"
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>jobReg</h3>
<form action="jobRegProc.do" method="post">
	직무: <input type="text" name="work" />
	회사명: <input type="text" name="company" /> <br />
	공고명: <input type="text" name="title" /> <br />
	경력: <input type="text" name="career" /> <br />
	전공: <input type="text" name="academic_abilty" />
	학력: <input type="text" name="prefer_basic" /> <br />
	사용가능 언어: <input type="text" name="prefer_language" /> <br />
	고용형태: <input type="text" name="employment_type" /> <br />
	급여: <input type="text" name="salary" /> <br />
	지역: <input type="text" name="location" /> <br />
	지원기간: <input type="text" name="time" /> <br />
	직책: <input type="text" name="position" /> <br />

	
	<input type="submit" value="공고 등록" />
	<input type="button" value="작성취소" class="cancel" onclick="gomain()" />
	<!-- <button onclick="location='jobNotice.jsp'">작성취소</button> -->
	<!-- <input type="button" value="작성취소" onclick="location='jobNotice.jsp'"/> -->
</form>

</body>
</html>