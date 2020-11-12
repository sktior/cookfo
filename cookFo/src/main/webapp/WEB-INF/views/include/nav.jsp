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
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="${pageContext.request.contextPath}/resources/img/banner.jpg" alt="New York" style="width:100%; height:350px;">
				<div class="carousel-caption">
					<h3>레시피</h3>
					<p>요리 레시피를 확인하세요~!</p>
				</div>
			</div>

			<div class="item">
				<img src="${pageContext.request.contextPath}/resources/img/banner.jpg" alt="New York" style="width:100%; height:350px;">
				<div class="carousel-caption">
					<h3>요리채팅</h3>
					<p>요리중 모르는것이 있을땐 사용자들에게 질문하세요~!</p>
				</div>
			</div>

			<div class="item">
				<img src="${pageContext.request.contextPath}/resources/img/banner.jpg" alt="New York" style="width:100%; height:350px;">
				<div class="carousel-caption">
					<h3>나만의 레시피</h3>
					<p>마음에 드는 레시피를 저장하세요!!</p>
				</div>
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</body>
</html>
