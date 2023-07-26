<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="../js/jquery-3.7.0.min.js"></script>
<script src="../js/jquery.bpopup.min.js"></script>
<title>Insert title here</title>
<style>
	.Pstyle{
   opacity: 0;
   display: none;

   position: relative;
   left: 100px;
   
   border: 5px solid #fff;
   padding: 20px;
   background-color: #550;
   width: 300px;
   height: 530px;
   
	}
	.b-close{
	   position: absolute;
	   right: 5px;
	   top: 5px;
	   padding: 0px;
	   display: inline-block;
	   cursor: pointer;
	}
	#popup{
	   position: relative;
	}
	#imgidx{
	   top: 50px;
	   position: absolute;
	}
	img{
	   position: absolute;
	   top: 40px;
	}

</style>
<script>
	function goPopup(){
		$("#popup").bPopup();
	}
</script>
</head>
<body>
<h3>layerpopup</h3>
<input type="button" value="클릭팝업" onclick="goPopup()" />
<div id="popup" class="Pstyle">
	<spqn class="b-close">close</spqn>
	<img src="../img/img1.png" alt="" />
	<div id="imgidx" class="content" style="height:auto; width:auto;">
	레이어팝업 완성	 <br /> 팝업크기는 div에서 조정
	</div>
</div>
</body>
</html>