<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Insert title here</title>
<script>
	function clearVal(){
		var inputVal = document.getElementById("q");
		inputVal.value="";
	}
</script>
</head>
<body>
<h3>board</h3>


<form action="board.do" method="get">
	<select name="f">
		<option value="btitle" ${param.f=="title"?" selected":"" }>제목</option>
		<option value="bcontent" ${param.f=="content"?" selected":"" }>내용</option>
	</select>
	<input type="text" name="q" value="${query }" id="q" onclick="clearVal()" />
	<input type="submit" value="검색" />
</form>

<table width="800" border="1">
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>글쓴이</td>
		<td>날짜</td>
		<td>조회</td>
	</tr>
	<c:forEach items="${list }" var="b">
		<tr>
			<td>${b.bno }</td>
			<td><a href="boardDetail.do?c=${b.bno }&h=${b.bcnt}">${b.btitle }</a></td>
			<td>${b.bwriter }</td>
			<td>${b.bdate }</td>
			<td>${b.bcnt }</td>
		</tr>	
	</c:forEach>
</table>
<a href="boardReg.do">글쓰기</a>


</body>
</html>