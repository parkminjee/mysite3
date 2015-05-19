<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
	pageContext.setAttribute("newLineChar", "\n");
%>



<!doctype html>
<html>
<head>
<title>mysite3</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mysite3/assets/css/guestbook.css" rel="stylesheet"
	type="text/css">
<link href="/mysite3/assets/css/board.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
			<c:import url="/WEB-INF/views/include/header.jsp" />
		</div>
		<div id="content">
			<div id="guestbook">
				<form action="/mysite3/guestbook" method="post">
					<input type='hidden' name="a" value="add">
					<table border=1 width=500>
						<tr>
							<td>이름</td>
							<td><input type="text" name="name"></td>
							<td>비밀번호</td>
							<td><input type="password" name="pwd"></td>
						</tr>
						<tr>
							<td colspan=4><textarea name="meg" cols=60 rows=5></textarea></td>
						</tr>
						<tr>
							<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
						</tr>
					</table>
				</form>
				<br>
				<c:forEach items="${requestScope.list }" var="vo">
					<table width=510 border=1>
						<tr>
							<td>${vo.no }</td>
							<td>${vo.id }</td>
							<td>${vo.date }</td>
							<td><a
								href="/mysite3/views/guestbook/deleteform.jsp?no=${vo.no }">삭제</a></td>
						</tr>
						<tr>
							<td colspan=4>${fn:replace( vo.meg, newLineChar, "<br>" ) }</td>
						</tr>
					</table>
					<br>
				</c:forEach>
			</div>
		</div>
		<div id="navigation">
			<c:import url="/WEB-INF/views/include/navigation.jsp" />
		</div>
		<div id="footer">
			<c:import url="/WEB-INF/views/include/footer.jsp" />
		</div>
	</div>
</body>
</html>