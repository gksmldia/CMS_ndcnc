<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>CMS_naedam</title>
<!-- Bootstrap CSS SET -->
<link href="${ pageContext.request.contextPath }/css/bootstrap.min.css" type="text/css" rel="stylesheet">
<!-- Custom CSS -->
<link href="${ pageContext.request.contextPath }/css/menubar.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/css/all_css.css" rel="stylesheet" type="text/css">
<!-- Bootstrap JS SET -->
<script type="text/javascript" src="${ pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript"  src="${ pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<!-- icon-font -->
<script src="https://use.fontawesome.com/bbddce3010.js"></script>
</head>
<body>
	<div class="container body">
		<jsp:include page="/jsp/common/menuBar.jsp" />
		<section class="container sectionContent minHeight">
			<div class="row text-center">
				<h1>
					<b>ND SW 기술자 경력관리시스템</b>
				</h1>
			</div>
			<div class="row text-center">
				<h4>ND 기술자의 경력을 체계적으로 관리하고, 개발자 배치를 효율적으로 관리 하는 시스템 입니다.</h4>
			</div>
			<c:choose>
				<c:when test="${ memberVO eq null }">
					<div class="formDiv">
						<form class="form-horizontal" action="${pageContext.request.contextPath }/member/login.do" method="post">
							<fieldset>
								<legend style="width: 95%; margin: auto;"><b>회원 로그인</b></legend>
								<div class="col-md-9 marginTop10">
									<div class="row form-group">
										<label for="inputId" class="col-md-3 control-label">아이디</label>
										<div class="col-md-4">
											<input type="text" class="form-control lInput" id="inputId" placeholder="ID 입력" name="id">
										</div>
									</div>
									<div class="row form-group">
										<label for="inputPassword" class="col-md-3 control-label">비밀번호</label>
										<div class="col-md-4">
											<input type="password" class="form-control lInput" id="inputPassword" placeholder="Password 입력" name="password">
										</div>
									</div>
								</div>
								<div class="col-md-3 marginTop20">
									<button type="submit" class="btn btn-primary btn-login">로그인</button>
								</div>
							</fieldset>
						</form>
						<hr noshade class="lformInHr">
						<div class="row lformFooter">
							<div class="col-md-3 text-center">
								<a href="${pageContext.request.contextPath }/member/enrollForm.do" class="footerA">회원가입</a>
							</div>
							<div class="col-md-6 text-center">
								<a href="${pageContext.request.contextPath }/member/findForm.do" class="footerA">아이디/비밀번호 찾기</a>
							</div>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="formDiv">
						<b style="font-size: 15;">${ memberVO.name }님</b>
						<hr noshade class="lformInHr">
							<p>${ memberVO.name }님 ND SW 기술자 경력관리 시스템에 오신 것을 환영합니다.</p>
						<hr noshade class="lformInHr">
					</div>
				</c:otherwise>
			</c:choose>
		</section>
	</div>	
</body>
</html>
