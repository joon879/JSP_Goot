<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="member_check()">
<h3>login_check</h3>
<script>
	idArray = new Array("kang", "kim", "lee");
	nameArray = new Array("강태공", "김유신", "리여사");
	pwdArray = new Array("111", "222", "333");
	
	function member_check(){
		//메인창의 정보 가져오기
		id = window.opener.document.frm.id.value;
		pwd = window.opener.document.frm.pwd.value;
		//alert(id+":"+pwd);
		rs = document.getElementById("result");
		
		flag = "n"; //찾는 멤버 없음
		tempStr = "";
		pos = 0; //배열의 위치
		for(var i=0; i<idArray.length; i++){
			if((id==idArray[i]) && (pwd==pwdArray[i])){
				pos = i;
				flag = "y";
				break;
			}
		}
		if(flag=="y"){
			tempStr = "<font color='red'>로그인 성공</font>";
			tempStr += nameArray[pos]+"님 방가방가";
		}
		else{
			tempStr = "<font color='blue'>로그인 실패</font>";
			tempStr += id+"님 다시 로그인 하세요";
		}
		rs.innerHTML=tempStr;
	}
	
	
</script>

<div id="result"> asdfasdf</div>



</body>
</html>
