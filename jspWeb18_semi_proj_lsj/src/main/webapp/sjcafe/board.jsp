<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Insert title here</title>
<link rel="stylesheet" href="../css/sjBoardStyle.css" />
<script>
	function clearVal(){
		var inputVal = document.getElementById("q");
		inputVal.value="";
	}
</script>
</head>
<body>

<h3 >board.jsp</h3>

<!-- 로그인, 로그아웃, 회원가입 -->
<div class="log">
<c:if test="${empty sessionScope.uid }">
	<a href="../login/loginForm.do">[login]</a>  |
	<a href="../join/joinForm.do">[join]</a>
</c:if>

<c:if test="${not empty sessionScope.uid }">
	<a href="../login/logoutProc.do">[logout]</a>
</c:if>
</div> <br />

<div>
<table width="1500" >
<div id="logo">
<img src="../img/logo.png" alt="logo"  /> <br />
</div>
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>작성자</td>
		<td>작성일</td>
		<td>조회</td>
		<td>좋아요</td>	
	</tr>
	
<c:forEach items="${list }" var="sj">
	<tr>
		<td>${sj.sjno }</td>
		<td><a href="boardDetail.do?c=${sj.sjno }&h=${sj.sjhit}">${sj.sjtitle }</a></td>
		<td>${sj.sjwriter }</td>
		<td>${sj.sjdate }</td>
		<td>${sj.sjhit }</td>
		<td>${sj.sjlike }</td>
	</tr>
</c:forEach>	

</table>
</div>

<div id="write">
<c:if test="${not empty sessionScope.uid }">
	<a href="boardReg.do" >글쓰기</a>
</c:if>
</div>




<!-- 검색 -->
<div id="search">
<form action="board.do" method="get">
	<select name="f">
		<option value="sjtitle" ${param.f=="title"?" selected":"" }>제목</option>
		<option value="sjcontent" ${param.f=="content"?" selected":"" }>내용</option>
	</select>
	<input type="text" name="q" value="${query }" id="q" onclick="clearVal()" />
	<input type="submit" value="검색" />
</form>
</div>


</body>
</html>