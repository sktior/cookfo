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
		<table class="table table-hover">
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<c:forEach var="row" items="${list }" >
				<tr>
					<td>${row.bno }</td>
					<td><a href="${pageContext.request.contextPath}/board/view/${row.bno}">${row.title }</a></td>
					<td>${row.writer }</td>
					<td>${row.cdate }</td>
					<td>${row.cnt }</td>
				</tr>
			</c:forEach>
		</table>
		<button class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/board/writeForm'">글쓰기</button>
	</div>
	<br>
	<br>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>
