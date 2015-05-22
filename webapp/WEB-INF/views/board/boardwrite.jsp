
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("newLineChar", "\n");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/mysite3/assets/css/main.css" rel="stylesheet"
	type="text/css">
<link href="/mysite3/assets/css/board.css" rel="stylesheet"
	type="text/css">
<link href="/mysite3/assets/css/button.css" rel="stylesheet"
	type="text/css">
<link href="/mysite3/assets/css/vicons-font.css" rel="stylesheet"
	type="text/css">
<title>mysite3</title>
</head>
<body>
	<div id="container">
		<div id="header">
			<c:import url="/WEB-INF/views/include/header.jsp">
			</c:import>
		</div>
		<div id="wrapper">
			<div id="content">
				<div id="boardname">
					<h2>게시판이름</h2>
				</div>
				<div id="boardsub">
					<h5>게시판설명</h5>
				</div>
				<a href="/mysite3/views/board/boardwrite.jsp">
					<button
						class="button button--antiman button--round-m button--text-medium button--border-medium">
						<i class="button__icon icon icon-plus"></i><span>글쓰기</span>

					</button>
				</a>

				<div>
					<form action="boardwrite" method="post">
					<input type='hidden' name="a" value="write">
					<input type="hidden" value="${authMember.no}" id="member_no" name="member_no">
				<input type="hidden" value="${authMember.name}"id="member_name" name="member_name"> 
						<table>
							<tr>
								<td>제목</td>
								<td colspan=3><textarea name="title" cols=70 rows=1.5></textarea></td>
							</tr>

							<tr>
								<td>내용</td>
								<td><textarea name="content" cols=70 rows=8></textarea></td>
							</tr>
							<tr>
								<c:choose>
								<c:when test="${empty authMember }">
								<td></td>
								<td>로그인이 필요합니다. 로그인해주세요.</td>
								</c:when>
								<c:otherwise>
								<td></td>
								<td align=right><input type="submit" VALUE=" 확인 "></td>
							</c:otherwise>
							</c:choose>
							</tr>
						</table>
					</form>
				</div>

			</div>
		</div>

		<div id="navigation">
			<c:import url="/WEB-INF/views/include/navigation.jsp">
				<c:param name="type" value="main"></c:param>
			</c:import>
		</div>
		<div id="footer">
			<jsp:include page="/WEB-INF/views/include/footer.jsp" />
		</div>
	</div>
</body>
</html>