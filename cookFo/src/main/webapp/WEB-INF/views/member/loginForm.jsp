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
		<div class="container " style='width:1000px;'>
			<!-- 입력폼 그리드 -->
				<form action="${pageContext.request.contextPath}/loginC/login" method="post">
					<!-- ID입력 -->
					<div class="input-group mt-3 mb-1">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">ID</span>
						</div>
						<input type="text" name="id" id="id" class="form-control"
							placeholder="Input ID" aria-label="Input ID"
							aria-describedby="basic-addon1" required>
					</div>
					<!-- PW입력 -->
					<div class="input-group mb-2">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">PW</span>
						</div>
						<input type="password" name="pw" id="pw" class="form-control"
							placeholder="Input Password" aria-label="Input Password"
							aria-describedby="basic-addon1" required>
					</div>
					<!-- 자동 로그인 -->
					<div class="custom-control custom-checkbox mb-1">
						<input type="checkbox" class="custom-control-input"
							name="isAutoLogin" value="true" id="customCheck1"> <label
							class="custom-control-label" for="customCheck1">로그인 유지</label>
					</div>
					<!-- 로그인 버튼 -->
					<button type="submit" class="btn btn-dark btn-sm btn-block">
						로그인 하기</button>
				</form>

				<!-- 회원가입 버튼 -->
				<button type="button" class="btn btn-dark btn-sm btn-block my-1"
					onclick="location.href='${pageContext.request.contextPath}/member/joinForm'">회원가입 하기</button>
			</div>
	<br><br><br><br><br><br>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>
