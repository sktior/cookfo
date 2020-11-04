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
	<div class="container p-3 my-3 bg-dark text-white">${vo.name }</div>
	<div class="container-fluid bg-3 text-center">
		<div class="container">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="http://localhost:9080/img/${vo.img1 }" alt="New York"
							style="width: 100%; height: 500px;">
					</div>

					<div class="item">
						<img src="http://localhost:9080/img/${vo.img2 }" alt="New York"
							style="width: 100%; height: 500px;">
					</div>

					<div class="item">
						<img src="http://localhost:9080/img/${vo.img3 }" alt="New York"
							style="width: 100%; height: 500px;">
					</div>
					<div class="item">
						<img src="http://localhost:9080/img/${vo.img4 }" alt="New York"
							style="width: 100%; height: 500px;">
					</div>
					<div class="item">
						<img src="http://localhost:9080/img/${vo.img5 }" alt="New York"
							style="width: 100%; height: 500px;">
					</div>
				</div>
			</div>
			<br> <br>
			<div class="row">
				<div class="col-sm-3">
					<img src="http://localhost:9080/img/${vo.img2 }" alt="Image"
						style="width: 250px; height: 250px;">
				</div>
				<div class="col-sm-3">
					<img src="http://localhost:9080/img/${vo.img3 }" alt="Image"
						style="width: 250px; height: 250px;">
				</div>
				<div class="col-sm-3">
					<img src="http://localhost:9080/img/${vo.img4 }" alt="Image"
						style="width: 250px; height: 250px;">
				</div>
				<div class="col-sm-3">
					<img src="http://localhost:9080/img/${vo.img5 }" alt="Image"
						style="width: 250px; height: 250px;">
				</div>
			</div>
		</div>
		<br> <br>
	</div>
	<div class="container alert alert-success">
		<strong>${vo.way }</strong>
	</div>

	<br>
	<br>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>
