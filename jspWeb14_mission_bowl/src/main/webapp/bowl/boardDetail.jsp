<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bstyle.css" />
</head>
<body>
<h3>boardDetail</h3>
<table class="twidth">
		<colgroup>
			<col width="15%" />
			<col width="35%" />
			<col width="15%" />
			<col width="35%" />

		</colgroup>
		<caption>Detail</caption>
		<tbody>
			<tr>
				<th class="left">번호</th>
				<td>${b.bno }</td>
				<th class="left">조회</th>
				<td>${b.bcnt }</td>
			</tr>
			<tr>
				<th class="left">글쓴이</th>
				<td>${b.bwriter }</td>
				<th class="left">날짜</th>
				<td>${b.bdate }</td>
			</tr>
			<tr>
				<th class="left">제목</th>
				<td colspan="3">${b.btitle }</td>
			</tr>
			<tr>
				<th class="left">내용</th>
				<td colspan="3" id="content">${b.bcontent }</td>
			</tr>
			<tr>
				<th class="left">첨부</th>
				<td colspan="3">첨부</td>
			</tr>


		</tbody>
	</table>
	<%-- <a href="noticeEdit.jsp?c=<%=rs.getString("seq")%>">수정</a> --%>
	<a href="boardEdit.do?c=${b.bno }">수정</a>
	<a href="boardDelProc.do?c=${b.bno }">삭제</a>
	<a href="board.do">목록</a>


</body>
</html>