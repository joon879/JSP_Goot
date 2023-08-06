<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function cancelurl(){
		location.href="board.do";
	}
</script>
</head>
<body>
<h3>boardReg</h3>
	<form action="boardRegProc.do" method="post">
		글쓴이: <input type="text" name="writer" /> <br />
		제목: <input type="text" name="title" /> <br />
		내용: 
		<textarea name="content" id="txtcontent" class="txtcontent">aaa</textarea> <br />
		첨부파일: <input type="file" name="txtFile" /> <br />
		
		<input type="submit" value="작성하기" />
		<input type="button" value="취소" class="cancel" onclick="cancelurl()" />
	</form>
</body>
</html>