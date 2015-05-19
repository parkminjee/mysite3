
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
					<table>
						<thead>
							<tr>
								<th scope="col">글번호</th>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col">작성일</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${requestScope.list }" var="vo">
								<tr>
									<td>${vo.no }</td>
									<td><a
										href="/mysite3/board?a=read&no=${vo.no }">${vo.title }</a></td>
									<td>${vo.member_name }</td>
									<td>${vo.reg_date }</td>
								</tr>
							</c:forEach>
						</tbody>

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