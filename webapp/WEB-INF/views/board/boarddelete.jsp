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
<link href="/mysite3/assets/css/user.css" rel="stylesheet"
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

				<div>

						
							<form id="login-form" name="loginform" method="post">
							<input type="hidden" name="a" value="delete">
								<p>정말로 삭제하시겠습니까?</p>
								<a href="/mysite3/board?a=list">
									<button
										class="button button--antiman button--round-m button--text-medium button--border-medium">
										<i class="button__icon icon icon-plus"></i><span>취소</span>
									</button>
								</a> <a href="boarddelete">
									<button type="submit"
										class="button button--antiman button--round-m button--text-medium button--border-medium">
										<i class="button__icon icon icon-plus"></i><span>확인</span>
									</button>
								</a>

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