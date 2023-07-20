<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>aredirect.jsp</h3>
	<%
	response.sendRedirect("bredirect.jsp");
	//redirect: 제어권을 넘긴다. ex) 로그인이 정상적으로 되면 다음 화면으로!! //
	
	%>
</body>
</html>


<!-- 
내장객체: jsp에서 제공하는 객체.
사용: 제공된 객체를 통해 메소드 접근.
jsp페이지가 서블릿으로 변환되면서 jsp 컨테이너가 자동으로 제공

종류
request 요청 정보를 저장하는 객체
response 응답 정보를 저장하는 객체
out 출력스트림 객체
session 하나의 웹브라우저 단위 저장
application 서버단위 저장 객체
pageContext 페이지 정보 저장
page 페이지 정보
config 설정 정보
exception 예외 정보
 -->
