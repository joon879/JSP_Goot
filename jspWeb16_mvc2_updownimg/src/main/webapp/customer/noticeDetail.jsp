<%@page import="customer.vo.Notice"%>
<%@page import="customer.dao.NoticeDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<title>Insert title here</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
	<h3>noticeDetail</h3>
	<%
	/* String seq = request.getParameter("c"); */
	/* String sql = "select seq, title, writer, content, regdate, hit from notices where seq =" + seq;

	//DB 연결
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "hr";
	String pw = "123456";
	Connection con = DriverManager.getConnection(url, user, pw);

	//실행
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	rs.next(); */
		
	/* String seq = request.getParameter("c");
	NoticeDao dao = new NoticeDao();
	Notice n = dao.getNotice(seq); */
	
	//Notice n = (Notice)request.getAttribute("n"); //->이걸 지우고 EL tag 사용
		
	
	%>

	<table class="twidth">
		<colgroup>
			<col width="15%" />
			<col width="35%" />
			<col width="15%" />
			<col width="35%" />

		</colgroup>
		<caption>Detail</caption>
		<tbody>
			<tr>
				<th class="left">글번호</th>
				<td>${n.seq }</td>
				<th class="left">조회수</th>
				<td>${n.hit }</td>
			</tr>
			<tr>
				<th class="left">작성자</th>
				<td>${n.writer }</td>
				<th class="left">작성시간</th>
				<td>${n.regdate }</td>
			</tr>
			<tr>
				<th class="left">제목</th>
				<td colspan="3">${n.title }</td>
			</tr>
			<tr>
				<th class="left">내용</th>
				<td colspan="3" id="content">${n.content }</td>
			</tr>
			<tr>
				<th class="left">첨부</th>
				<td colspan="3" id="addfile">
				<!-- 파일이름 -->
					<a href="download.do?p=customer/upload/&f=${n.filesrc }">${n.filesrc }</a>
					<!-- p: 파일경로, f:파일명, &:조건 하나 추가 -->
				
				</td>
			</tr>


		</tbody>
	</table>
	<%-- <a href="noticeEdit.jsp?c=<%=rs.getString("seq")%>">수정</a> --%>
	<a href="noticeEdit.do?c=${n.seq }">수정</a>
	<a href="noticeDelProc.do?c=${n.seq }">삭제</a>
	<a href="notice.do">목록</a>
	<hr />
	<!-- eq:이퀄, ne:낫이퀄 -->
	<c:if test="${n.filesrc ne null }">
		<img src="./upload/${n.filesrc }" width="200" height="180" alt="" />
	</c:if>
	<hr />
	<c:set value="${n.filesrc }" var="filename"/>
	<c:set var="fileNm" value="${fn:toLowerCase(filename) }" />
	<c:forTokens var="token" items="${fileNm }" delims="." varStatus="status">
	<c:if test="${status.last }">
	<c:choose>
		<c:when test="${token eq 'jpg'}">
			${filename } :: 그림파일 jpg <br />
			${status.last }
			<img src="./upload/${n.filesrc }" width="200" height="180" alt="" />
		</c:when>
		<c:when test="${token eq 'png'}">
			${filename } :: 그림파일 png <br />
			${status.last }
			<img src="./upload/${n.filesrc }" width="200" height="180" alt="" />
		</c:when>
		<c:otherwise>
			다른파일
		</c:otherwise>
	</c:choose>
	</c:if>
	</c:forTokens>
	
	
	

</body>
</html>
