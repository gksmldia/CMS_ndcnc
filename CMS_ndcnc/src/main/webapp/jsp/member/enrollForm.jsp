<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입_naedam</title>
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
<style type="text/css">
.eFormDiv {
	width: 80;
	height: 80;
	border: 1px solid gray;
	border-radius: 5px;
	
}
</style>
</head>
<body>
	<div class="container body">
		<jsp:include page="/jsp/common/menuBar.jsp" />		
		<section class="container sectionContent minHeight">
			<div class="eFormDiv">
				가나다라마바사
			</div>
		</section>
	</div>
</body>
</html>