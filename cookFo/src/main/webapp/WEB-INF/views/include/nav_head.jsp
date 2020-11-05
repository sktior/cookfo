<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<html>
<head>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light" style="padding:0;">
		<a class="navbar-brand" href="${pageContext.request.contextPath}">CookFo</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
			<c:choose>
				<c:when test="${sessionScope.info eq null }">
				<li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/member/loginForm">로그인
						<span class="sr-only">(current)</span>
				</a></li>
				</c:when>
				<c:otherwise>
				<li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath }/member/myPage">${sessionScope.info.id}
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/loginC/logout">로그아웃
						<span class="sr-only">(current)</span>
				</a></li>
				</c:otherwise>
			</c:choose>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/recipe/list">레시피</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/chat/chatRoom">대화방</a></li>
				<li class="nav-item"><a class="nav-link" href="#">게시판</a></li>
			</ul>
		</div>
	</nav>
</body>
</html>
