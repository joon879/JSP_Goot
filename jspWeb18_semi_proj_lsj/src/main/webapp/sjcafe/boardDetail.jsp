<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<title>Insert title here</title>
<link rel="stylesheet" href="../css/sjDetailStyle.css" />

<script>

//좋아요 업데이트 함수(구현중)
function likeUp(){
	
}
</script>
</head>
<body>
<h3>boardDetail</h3>

<table width=1000>
		<%-- <colgroup>
			<col width="80%" />
			<col width="20%" />
		</colgroup> --%>
	<tr>
		<td class="title">${sj.sjtitle }</td>
		
	</tr>
	<tr>
		<td class="writer">${sj.sjwriter }</td>
		
	</tr>
	<tr>
		<td class="date">${sj.sjdate } &nbsp&nbsp&nbsp 조회  ${sj.sjhit }</td>	
	</tr>
	
	
	
	<tr>
		<td class="content"><pre>${sj.sjcontent }</pre></td>
		
	</tr>
	
	
	<tr>
		
		<td>좋아요  ${sj.sjlike }</td>
		
	</tr>
	
		
	<tr>
		<td>
			<a href="download.do?p=sjcafe/upload/&f=${sj.sjfile }">${sj.sjfile }</a>
			<!-- p: 파일경로, f:파일명, &:조건 하나 추가 -->
		</td>
	</tr>
</table>

<br />


<!-- 업로드 -->
<c:if test="${sj.sjfile ne null }">
		<img src="./upload/${sj.sjfile }" width="200" height="180" alt="" />
</c:if>
<hr />



<c:set value="${sj.sjfile }" var="filename"/>
<c:set var="fileNm" value="${fn:toLowerCase(filename) }" />
<%-- <c:forTokens var="token" items="${fileNm }" delims="." varStatus="status">
	<c:if test="${status.last }">
		<c:choose>
			<c:when test="${token eq 'jpg'}">
				${filename } :: 그림파일 jpg <br />
				${status.last }
				<img src="./upload/${sj.sjfile }" width="200" height="180" alt="" />
			</c:when>
			<c:when test="${token eq 'png'}">
				${filename } :: 그림파일 png <br />
				${status.last }
				<img src="./upload/${sj.sjfile }" width="200" height="180" alt="" />
			</c:when>
			<c:otherwise>
				다른파일
			</c:otherwise>
		</c:choose>
	</c:if>
</c:forTokens> --%>



<%-- <c:choose>
	<c:when test="${uid eq sj.sjwriter }">
		<a href="boardEdit.do?c=${sj.sjno }">수정</a>
		<a href="boardDelProc.do?c=${sj.sjno }">삭제</a>
	</c:when>
</c:choose> --%>



<!-- 글 작성자만 수정, 삭제 가능 -->
<%-- <c:if test="${not empty sessionScope.uid} "> --%>
<div id="edit">
	<c:set value="${sj.sjwriter}" var="writer"/>
	<c:if test="${uid eq writer }">
		<a href="boardEdit.do?c=${sj.sjno }">수정</a>
		<a href="boardDelProc.do?c=${sj.sjno }">삭제</a>
	</c:if>
</div>
<%-- </c:if> --%>




<a href="board.do">글목록</a>
<input type="button" name="sjlike" value="좋아요" onclick="likeUp()" />
<input type="button" name="sjprev" value="이전글" />
<input type="button" name="sjnext" value="다음글" />



</body>
</html>