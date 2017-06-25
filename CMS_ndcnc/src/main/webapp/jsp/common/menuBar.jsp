<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header class="navDiv">
	<div class="row topHr"></div>
	<div class="row">
		<div class="col-md-12 topRow">
		<c:choose>
			<c:when test="${ memberVO eq null }">
				<div class="col-md-3 col-md-offset-8 text-right" style="margin-top: 3px; padding-right: 0px; width: 135px;">
					<a href="${ pageContext.request.contextPath }/index.jsp" class="topA">로그인</a>
				</div>
				<div class="col-md-1" style="width: 30px;">
					<div class="division"></div>
				</div>
				<div class="col-md-3 text-left" style="margin-top: 3px; padding-left: 0px; width: 135px;">
					<a href="${ pageContext.request.contextPath }/member/enrollForm.do" class="topA">회원가입</a>
				</div>
			</c:when>
			<c:otherwise>
				<div class="col-md-3 col-md-offset-8 text-right" style="margin-top: 3px; padding-right: 0px; width: 135px;">
					<a href="${ pageContext.request.contextPath }/index.jsp" class="topA">로그아웃</a>
				</div>
				<div class="col-md-1" style="width: 30px;">
					<div class="division"></div>
				</div>
				<div class="col-md-3 text-left" style="margin-top: 3px; padding-left: 0px; width: 135px;">
					<a href="${ pageContext.request.contextPath }/member/enroll.do" class="topA">회원정보</a>
				</div>
			</c:otherwise>		
		</c:choose>
		</div>
	</div>
	<div class="row navHr"></div>
	<div class="row">
		<div class="col-md-3 text-center">
			<a href="${ pageContext.request.contextPath }/index.jsp">
				<img alt="naedamcncLogo" src="${ pageContext.request.contextPath }/img/NDcnc.png" id="logoimg">
			</a>
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-2 headerText">
			<c:choose>
				<c:when test="${ memberVO eq null }">
					<h4><strong>경력관리</strong></h4>
				</c:when>
			</c:choose>
		</div>
		<div class="col-md-2 headerText">
			<c:choose>
				<c:when test="${ memberVO eq null }">
					<h4><strong>이용안내</strong></h4>
				</c:when>
			</c:choose>
		</div>
		<div class="col-md-2 headerText">
			<c:choose>
				<c:when test="${ memberVO eq null }">
					<h4><strong>소식·알림</strong></h4>
				</c:when>
			</c:choose>
		</div>
		<div class="col-md-2 headerText">
			<c:choose>
				<c:when test="${ memberVO eq null }">
					<h4><strong>문의</strong></h4>
				</c:when>
			</c:choose>
		</div>
	</div>
	<div class="row navHr"></div>
</header>
