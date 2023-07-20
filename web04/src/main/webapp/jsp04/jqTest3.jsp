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
	p{
		width: 500px;
		height: 200px;
		background: green;
	}
</style>

<script>
$().ready(function(){
	$("p").mouseenter(function (){
		//alert("a");
		$(this).text("마우스 접근");
		
	});
	$("p").mouseleave(function (){
		//alert("a");
		$(this).text("마우스 사라짐");
		
	});
});

</script>

<h3>jqTest3</h3>
<p>마우스를 이곳으로 이동 해보세요.</p>
<button id="b2">버튼</button>




</body>
</html>