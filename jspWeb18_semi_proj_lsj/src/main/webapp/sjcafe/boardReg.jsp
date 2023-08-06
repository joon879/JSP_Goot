<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/sjstyle.css" />
<script>
	function cancelurl(){
		location.href="board.do"
	}
</script>
</head>
<body>
<h3>boardReg</h3>

<form action="boardRegProc.do" method="post" enctype="multipart/form-data">
<table class="twidth">
	<colgroup>
			
	</colgroup>
	<tr>
		<th>제목</th>
		<td>
			<input type="text" class="inp" name="title" />
		</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>
			<textarea name="content" id="" class="txt"></textarea>
		</td>
	</tr>
	<tr>
		<th>첨부파일</th>
		<td>
			<input type="file" name="file" size="50" class="inp" />
		</td>
	</tr>
</table>


<!-- 작성자 id 가져오기 -->
<input type="hidden" name="uid" value="${uid }" />

<input type="submit" value="등록하기" />
<input type="button" value="취소" class="cancel" onclick="cancelurl()" />

</form>
</body>
</html>