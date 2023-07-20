<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	buffer = "16kb"
	
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>outTest.jsp</h3>
	<%
	//buffer: 임시저장 공간
	int bufferSize = out.getBufferSize();
	int remainSize = out.getRemaining();
	int useSize = bufferSize-remainSize;
	
	%>
	<h2>현재 버퍼 사용 현황</h2>
	전체 버퍼: <%=bufferSize %> <br />
	사용 버퍼: <%=useSize %> <br />
	남은 버퍼: <%=remainSize %> <br />
</body>
</html>