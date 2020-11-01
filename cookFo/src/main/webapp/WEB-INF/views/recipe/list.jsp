<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
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
<title>쿸포</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/nav_head.jsp"%>
	<%@ include file="/WEB-INF/views/include/nav.jsp"%>
	<br>
	<br>

	<div class="container-fluid text-center bg-grey">
		<h2>레시피</h2>
		<br>
		<div class="row">
			<div class="col-sm-3">
				<a href="#">전체</a>
			</div>
			<div class="col-sm-3">
				<a href="#">국</a>
			</div>
			<div class="col-sm-3">
				<a href="#">반찬</a>
			</div>
			<div class="col-sm-3">
				<a href="#">기타</a>
			</div>
		</div>
		<br> <br>
		<div class="row text-center">
			<div class="col-sm-4">
				<div class="thumbnail">
					<img src="../resources/img/된장.jpg" alt="Random Name"
						style="width: 200; height: 200;">
					<p>
						<strong>된장찌개</strong>
					</p>
					<p>국</p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="thumbnail">
					<img src="../resources/img/된장.jpg" alt="Random Name"
						style="width: 200; height: 200;">
					<p>
						<strong>김치찌개</strong>
					</p>
					<p>국</p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="thumbnail">
					<img src="../resources/img/된장.jpg" alt="Random Name"
						style="width: 200; height: 200;">
					<p>
						<strong>계란말이</strong>
					</p>
					<p>반찬</p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="thumbnail">
					<img src="../resources/img/된장.jpg" alt="Random Name"
						style="width: 200; height: 200;">
					<p>
						<strong>소시지 볶음</strong>
					</p>
					<p>반찬</p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="thumbnail">
					<img src="../resources/img/된장.jpg" alt="Random Name"
						style="width: 200; height: 200;">
					<p>
						<strong>파전</strong>
					</p>
					<p>반찬</p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="thumbnail">
					<img src="../resources/img/된장.jpg" alt="Random Name"
						style="width: 200; height: 200;">
					<p>
						<strong>미역국</strong>
					</p>
					<p>국</p>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<button type="button" id="addRecipe" class="btn btn-primary" onClick="location.href='${pageContext.request.contextPath}/recipe/addForm'">
			등록<i class="fa fa-check spaceLeft"></i>
		</button>
	</div>
	<br>
	<br>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>
