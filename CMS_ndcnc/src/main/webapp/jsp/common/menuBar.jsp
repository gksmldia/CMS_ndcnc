<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header class="navDiv">
	<nav id="">
		<div id="topHr"> </div>
		<div id="topNav">
			<c:choose>
				<c:when test="${ memberVO eq null }">
					<div class="row topRow">
						<div class="col-md-2" style="padding-right: 0px; width: 165px;">
							<div class="row" style="width: 170; padding-right: 0px;">
								<div class="col-md-5 text-right" style="margin-top: 3; padding-right: 0px; width: 135;">
									<a href="${ pageContext.request.contextPath }/index.jsp" class="topA">로그인</a>
								</div>
								<div class="col-md-1">
									<div class="division"></div>
								</div>
							</div>
						</div>
						<div class="col-md-1 text-left" style="margin-top: 3; padding-left: 0px; width: 135;">
							<a href="${ pageContext.request.contextPath }/member/enroll.do" class="topA">회원가입</a>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="row topRow">
						<div class="col-md-2" style="padding-right: 0px; width: 165px;">
							<div class="row" style="width: 170; padding-right: 0px;">
								<div class="col-md-5 text-right" style="margin-top: 3; padding-right: 0px; width: 135;">
									<a href="${ pageContext.request.contextPath }/index.jsp" class="topA">로그아웃</a>
								</div>
								<div class="col-md-1">
									<div class="division"></div>
								</div>
							</div>
						</div>
						<div class="col-md-1 text-left" style="margin-top: 3; padding-left: 0px; width: 135;">
							<a href="${ pageContext.request.contextPath }/member/enroll.do" class="topA">회원정보</a>
						</div>
					</div>
				</c:otherwise>		
			</c:choose>
		</div>
	</nav>	
	<hr noshade class="headerLine">
	<div class="row">
		<div class="col-md-3 text-center">
			<a href="${ pageContext.request.contextPath }/index.jsp">
				<img alt="naedamcncLogo" src="${ pageContext.request.contextPath }/resources/img/NDcnc.png" id="logoimg">
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
	<hr noshade class="headerLine">
</header>
