
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
					<h3>게시판이름</h3>
				</div>
				<div id="boardsub">
					<h6>게시판설명</h6>
				</div>
				<a href="boardwrite">
					<button
						class="button button--antiman button--round-m button--text-medium button--border-medium">
						<i class="button__icon icon icon-plus"></i><span>글쓰기</span>

					</button>
				</a>
				<div>
						<input type='hidden' name="no" value="${read.no }">
						
						<table >
							<tr>
								<td>제목</td>
								<td colspan=3>${read.title }</td>
							</tr>
							<tr>
								<td>이름</td>
								<td>${read.member_name }</td>
								<td>작성일</td>
								<td>${read.reg_date }</td>
							</tr>
							<tr>
								<td colspan=4>${fn:replace( read.content, newLineChar, "<br>" ) }</td>
							</tr>
							<tr>
							<c:choose>
							<c:when test="${empty authMember }">
							<td align=right colspan=4>수정 및 삭제 권한이 없습니다.</td>
							</c:when>
							<c:otherwise>
								<td colspan=4 align=right><a
									href="boarddelete?no=${read.no }">
										<button
											class="button button--antiman button--round-m button--text-medium button--border-medium">
											<i class="button__icon icon icon-plus"></i><span>삭제</span>

										</button>
								</a><a href="boardupdate?no=${read.no }">
										<button
											class="button button--antiman button--round-m button--text-medium button--border-medium">
											<i class="button__icon icon icon-plus"></i><span>수정</span>

										</button>
								</a></td>
								</c:otherwise>
								</c:choose>
							</tr>
						</table>
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