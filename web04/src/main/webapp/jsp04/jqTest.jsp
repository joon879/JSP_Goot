<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../jq/jquery-3.7.0.min.js"></script>
</head>
<body>

<style>
	#display{
		width: 200px;
		height: 200px;
		border: 3px double #333;
	}
</style>

<script>
$().ready(function(){
	$("button").click(function (){
		alert('aaa');
		$("#display").html("<img src='../img/pear.png'>");
	});
});

</script>

<h3>jqTest</h3>

<div id="display">내용변경</div>
<button>display</button>
</body>
</html>