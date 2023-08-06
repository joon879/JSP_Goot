<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>loginProc</h3>

<%
/*
request.setCharacterEncoding("utf8");
String id = request.getParameter("id");
String pass = request.getParameter("password");

String sql = "select pwd from bmember where id=?";
*/

/*
//DB 연결
Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";
Connection con = DriverManager.getConnection(url, user, pw);

//실행
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, id);
ResultSet rs = pstmt.executeQuery();
*/


//로그인 경우의 수
//loginProcController.java로 옮기면서 변경하여 이동.
/*
String ypass = "";
int x = -1;
String msg = "";

if(rs.next()){
	ypass = rs.getString("pwd"); //DB에 있는 pwd를 가져와서 ypass에 넣고 비교 시작.
	if(ypass.equals(pass)){
		x = 1; //로그인 성공
	}
	else{
			x = 0; //로그인 실패
	}
}else{
	x = -1; //아이디 없는 상태
}
System.out.print("xxxx: "+x);


//x값에 따라 msg라는 파라미터값을 동적으로 전달(session은 브라우저 단위)
if(x==1){ //로그인 성공
	session.setAttribute("sessionID", id); //sessionID라는 이름으로 id를 저장?
	msg="../mainForm.jsp";
}
else if(x==0){ //실패 패스워드 불일치
	msg="./loginForm.jsp?msg=0";
}
else{ //실패 아이디 없음
	msg="./loginForm.jsp?msg=-1";
}

response.sendRedirect(msg);
*/

%>

</body>
</html>