<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/sjstyle.css" />
</head>
<body>
<h3>boardEdit</h3>
<form action="boardEditProc.do" method="post">
<table>
	<colgroup>
			
	</colgroup>
	
	<tr>
		<th>제목</th>
		<td class="title">
			<input type="text" class="inp" name="title" ${sj.sjtitle } />
		</td>
	</tr>
	<tr>
		<td>${sj.sjwriter }</td>
	</tr>
	<tr>
		<td>${sj.sjdate }</td>
		<td>${sj.sjhit }</td>	
	</tr>
	<tr>
		<th>내용</th>
		<td>
		<textarea name="content" class="txt">${sj.sjcontent }</textarea>
		</td>
	</tr>
	<tr>
		<td>${sj.sjlike }</td>
	</tr>
	<tr>
		<td>${sj.sjfile }</td>
	</tr>



</table>

<input type="hidden" name="c" value="${sj.sjno }" />
<input type="submit" value="수정하기" />
<a href="boardDetail.do?c=${sj.sjno }&h=${sj.sjhit}">취소</a>


</form>





</body>
</html>