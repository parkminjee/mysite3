<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<ul>

	<li class="selected">${authMember.name }</li>

	<li><a href="/mysite3/guestbook?a=list">방명록</a></li>
	<li><a href="/mysite3/board?a=list">게시판</a></li>

</ul>