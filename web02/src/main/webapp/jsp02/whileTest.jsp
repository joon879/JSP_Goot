<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>whileTest.jsp</h2>

<%
int number = Integer.parseInt(request.getParameter("number"));
int num = Integer.parseInt(request.getParameter("num"));
/* number타입이라도 파라미터로 넘어오는건 무조건 String이다.
그걸 int로 변형 시켜줘야 함. */


long multiply = 1;
int count = 0;
while(count < num){
	multiply *= number;
	count++;
}

%>

결과: <%=multiply %>
</body>
</html>