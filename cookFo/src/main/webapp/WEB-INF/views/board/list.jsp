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
		<div class="container text-center">
			<!-- 페이징 -->
				<div class="paging">
					<div id="pagingDiv">
						<c:if test="${paging.prev}">
							<a href="${paging.startPage - 1 }">이전</a>
						</c:if>
						<c:forEach var="num" begin="${paging.startPage}"
							end="${paging.endPage }">
						&nbsp;<a href="${num }">${num }</a>&nbsp;
					</c:forEach>
						<c:if test="${paging.next}">
							<a id="next" href="${paging.endPage + 1 }">다음</a>
						</c:if>
					</div>
					<form id="pagingFrm" name="pagingForm" action="board/list"
						method="get">
						<input type="hidden" id="pageNum" name="pageNum"
							value="${paging.cri.pageNum }"> <input type="hidden"
							id="amount" name="amount" value="${paging.cri.amount }">
					</form>
				</div>
		</div>
		<button class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/board/writeForm'">글쓰기</button>
	</div>
	<br>
	<br>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							//페이지 번호 이동
							$('#pagingDiv a').click(function(e) {
								e.preventDefault();
								$('#pageNum').val($(this).attr("href"));
								pagingForm.submit();
							});
						});
	</script>
</body>
</html>
