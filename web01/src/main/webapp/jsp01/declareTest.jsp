<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 주석: 블록잡고 컨트롤 시프트 슬래시/역슬래시-->


<%-- 
선언문: <%! %> - 전역변수 선언(위에서 아래 순서X, 아래에 있어도 위에서 읽기 가능!
스크립트릿(코드블락) - (scriptlet): <% %> - 자바프로그래밍, 자바코드 넣기.
표현식: <%= %> 화면에 값을 출력 
--%>

<%
String str1 = "게임 ID: "+ str2;
String username = "username: "+ str2;

%>
<%!
String str2 = "blue";
%>

접속자: <%=str1 %> <br>
접속자: <%=str2 %> <br>
유저이름: <%=username %> <br>

</body>
</html>