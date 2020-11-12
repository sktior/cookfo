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

	<div class="container">
		<h2>마이페이지</h2>
		<table class="table">
			<thead>
				<tr>
					<th>기능</th>
					<th>이동</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${sessionScope.info.id }</td>
					<td>♥반갑습니다 ${sessionScope.info.name }님♥</a></td>
				</tr>
				<tr class="Info">
					<td>회원정보수정</td>
					<td><a href="${pageContext.request.contextPath}/member/modForm">이동</a></td>
				</tr>
				<tr class="success">
					<td>나의리스트</td>
					<td><a href="${pageContext.request.contextPath}/member/myList">이동</a></td>
				</tr>
				<tr class="danger">
					<td>내가쓴글</td>
					<td><a href="#">이동</a></td>
				</tr>
			</tbody>
		</table>
	</div>

	<br><br><br>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>
