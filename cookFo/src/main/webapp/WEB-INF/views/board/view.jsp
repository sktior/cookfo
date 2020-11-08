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
		<input type="hidden" value="${vo.bno }" id="bno">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"
							style="background-color: #eeeeee; text-align: center;">글 보기
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">글 제목</td>
						<td colspan="2" style="text-align: left;">${vo.title }</td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2" style="text-align: left;">${vo.writer }</td>
					</tr>
					<tr>
						<td>작성일</td>
						<td colspan="2" style="text-align: left;">${vo.cdate }</td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="min-height: 200px; text-align: left;">${vo.content }</td>
					</tr>
				</tbody>
			</table>
			<a href="${pageContext.request.contextPath}/board/list"
				class="btn btn-primary">목록</a>
			<c:if test="${sessionScope.info.id eq vo.writer }">
				<a href="#" class="btn btn-primary" id="modBtn">수정</a>
				<a href="${pageContext.request.contextPath}/board/list"
					class="btn btn-primary">삭제</a>
			</c:if>
		</div>
	</div>

	<br>
	<br>
	
	<div class="modal" id="modModal">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">비밀번호 확인</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					비밀번호 : <input type="password" id="pwchk" name="pwchk">
					<div id="errmsg"></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal" id="mod">수정</button>
					<button type="button" class="btn btn-default" data-dismiss="modal" id="close">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	<script type="text/javascript">
		var modmodal = document.getElementById('modModal');
		$('#modBtn').click(function(){
			$('#errmsg').text("");
			modmodal.style.display = "block";
		});
		$('.close').click(function(){
			modmodal.style.display = "none";
		})
		$('#close').click(function(){
			modmodal.style.display = "none";
		})
		
		$('#mod').click(function(){
			if($('#pwchk').val().length <= 0){
				$('#errmsg').text("비밀번호를 입력하세요.");
				$('#errmsg').css("color","red");
				return;
			}
			var pw = $('#pwchk').val();
			var bno = $('#bno').val();
			const info = JSON.stringify({pw:pw, bno:bno});
			$.ajax({
				data : info,
				url : "${pageContext.request.contextPath}/board/mod",
				type : "post",
				dataType : "text",
				contentType : "application/json; charset=UTF-8",
				success : function(data) {
					console.log(data);
				},
				error : function(e) {
					console.log(e);
				}
			});
		})
		
	</script>
</body>
</html>
