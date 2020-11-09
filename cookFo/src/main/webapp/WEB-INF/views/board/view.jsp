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
				<a href="#" class="btn btn-primary" id="delBtn">삭제</a>
			</c:if>
		</div>
	</div>

	<br>
	<br>
	
	<!-- 댓글 부분 -->
	<div class="container">
		<form id="commentForm" name="commentForm" method="post">
			<br>
			<br>
			<div>
				<div>
					<span><strong>댓글</strong></span> 
				</div>
				<div>
					<table class="table">
						<tr>
							<td><textarea style="width: 1100px" rows="3" cols="30"
									id="content" name="content" placeholder="댓글을 입력하세요"></textarea>
								<br>
								<div>
									<a href='#' class="btn pull-right btn-primary">등록</a>
								</div></td>
						</tr>
					</table>
				</div>
			</div>
		</form>
	</div>
	<div class="container">
		<form id="commentListForm" name="commentListForm" method="post">
			<div id="commentList">ㅁㄴㅇㅁㄴㅇ</div>
		</form>
	</div>
	
	<!-- 모달 -->

	<div class="modal" id="modModal">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">비밀번호 확인(수정)</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					비밀번호 : <input type="password" id="pwchk" name="pwchk">
					<div id="errmsg"></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						id="mod">수정</button>
					<button type="button" class="btn btn-default" data-dismiss="modal"
						id="close">Close</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal" id="modFormModal">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">제목</h4>
					<button type="button" class="doclose" data-dismiss="modal">&times;</button>
				</div>
				<form action="${pageContext.request.contextPath}/board/domod"
					method="post" id="domodForm">
					<div class="modal-body">
						제목 : <input type="text" id="newtitle" name="title"
							placeholder="제목">
						<div id="errmsgtitle"></div>
						내용 :
						<textarea placeholder="내용" name="content" maxlength="3000"
							id="newcontent" style="height: 350px; width: 400px;"></textarea>
						<div id="errmsgcontent"></div>
					</div>
					<input type="hidden" name="bno" value="${vo.bno }">
				</form>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						id="domod">수정</button>
					<button type="button" class="btn btn-default" data-dismiss="modal"
						id="doclose">Close</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal" id="delModal">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">비밀번호 확인(삭제)</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					비밀번호 : <input type="password" id="pwchk2" name="pwchk">
					<div id="errmsgdel"></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						id="del">삭제</button>
					<button type="button" class="btn btn-default" data-dismiss="modal"
						id="delclose">Close</button>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>

	<!-- 수정파트 -->
	<script type="text/javascript">
		var modmodal = document.getElementById('modModal');
		var modFormmodal = document.getElementById('modFormModal');
		$('#modBtn').click(function() {
			$('#errmsg').text("");
			modmodal.style.display = "block";
		});
		$('.close').click(function() {
			modmodal.style.display = "none";
		})
		$('#close').click(function() {
			modmodal.style.display = "none";
		})

		$('#mod').click(function() {
			if ($('#pwchk').val().length <= 0) {
				$('#errmsg').text("비밀번호를 입력하세요.");
				$('#errmsg').css("color", "red");
				return;
			}
			var pw = $('#pwchk').val();
			var bno = $('#bno').val();
			const info = JSON.stringify({
				pw : pw,
				bno : bno
			});
			$.ajax({
				data : info,
				url : "${pageContext.request.contextPath}/board/mod",
				type : "post",
				dataType : "text",
				contentType : "application/json; charset=UTF-8",
				success : function(data) {
					if (data == 'success') {
						modmodal.style.display = "none";
						modFormmodal.style.display = "block";
					} else {
						$('#errmsg').text("비밀번호가 틀립니다.");
						$('#errmsg').css("color", "red");
					}
				},
				error : function(e) {
					console.log(e);
				}
			});
		})
		$('#domod').click(function() {
			if ($('#newtitle').val() <= 0) {
				$('#errmsgtitle').text("제목을 입력하세요");
				$('#errmsgtitle').css("color", "red");
				return;
			}
			if ($('#newcontent').val() <= 0) {
				$('#errmsgcontent').text("내용을 입력하세요");
				$('#errmsgcontent').css("color", "red");
				return;
			}
			$('#domodForm').submit();
		})
		$('.doclose').click(function() {
			modFormmodal.style.display = "none";
		})
		$('#doclose').click(function() {
			modFormmodal.style.display = "none";
		})
	</script>

	<!-- 삭제파트 -->
	<script type="text/javascript">
		var delmodal = document.getElementById('delModal');
		$('#delBtn').click(function() {
			$('#errmsgdel').text("");
			delmodal.style.display = "block";
		});
		$('.close').click(function() {
			delmodal.style.display = "none";
		})
		$('#delclose').click(function() {
			delmodal.style.display = "none";
		})
		$('#del').click(function() {
			if ($('#pwchk2').val().length <= 0) {
				$('#errmsgdel').text("비밀번호를 입력하세요.");
				$('#errmsgdel').css("color", "red");
				return;
			}
			var pw = $('#pwchk2').val();
			var bno = $('#bno').val();
			const info = JSON.stringify({
				pw : pw,
				bno : bno
			});
			$.ajax({
				data : info,
				url : "${pageContext.request.contextPath}/board/mod",
				type : "post",
				dataType : "text",
				contentType : "application/json; charset=UTF-8",
				success : function(data) {
					console.log(data);
					if (data == 'success') {
						delmodal.style.display = "none";
						del();
					} else {
						$('#errmsgdel').text("비밀번호가 틀립니다.");
						$('#errmsgdel').css("color", "red");
					}
				},
				error : function(e) {
					console.log(e);
				}
			});
		})
		function del(){
			var bno = $('#bno').val();
			const info = JSON.stringify({
				bno : bno
			});
			$.ajax({
				data : info,
				url : "${pageContext.request.contextPath}/board/dodel",
				type : "post",
				dataType : "text",
				contentType : "application/json; charset=UTF-8",
				success : function(data) {
					console.log(data);
					if (data == 1) {
						alert("삭제되었습니다.");
						window.location.href="${pageContext.request.contextPath}/board/list";

					} else {
						alert("에러가 발생했습니다. 관리자에게 문의하세요.");
					}
				},
				error : function(e) {
					console.log(e);
				}
			});
		}
	</script>
</body>
</html>
