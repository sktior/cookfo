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
<br>
	<div class="container text-center">
		<h2>오늘 뭐먹을지 고민되세요??</h2>
		<h4>오늘은 <strong style="color:blue;">${vo.name }</strong> 어떠세요? </h4>
		<br>
		<div class="row">
			<div class="col-sm-12">
				<p>
					<strong>${vo.name }</strong>
				</p>
				<br> <a href="${pageContext.request.contextPath}/recipe/recipeView/${vo.rno}"><img src="http://localhost:9080/img/${vo.img1 }" alt="Random Name" style="width:600; height:600;"></a>
			</div>
		</div>
	</div>
</body>
</html>
