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
					<td>회원탈퇴</td>
					<td><a href="javascript:;" id="del">이동</a></td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="modal" id="delMember">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">비밀번호 확인</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					비밀번호 : <input type="password" id="pwcheck" name="pwcheck">
					<div id="errmsgs"></div>
				</div>
			<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						id="success">확인</button>
					<button type="button" class="btn btn-default" data-dismiss="modal"
						id="cancel">취소</button>
			</div>
			</div>
		</div>
	</div>
	<br><br><br>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	<script type="text/javascript">
		$('#del').click(function(){
			$('#errmsgs').html("");
			var id = '${sessionScope.info.id}';
			var modal = document.getElementById('delMember');
			modal.style.display = "block";
			$('#success').click(function(){
				if($('#pwcheck').val().length <= 0){
					alert("비밀번호를 입력하세요.");
					return;
				}
				var pw = $('#pwcheck').val();
				const info = JSON.stringify({id:id, pw:pw});
				$.ajax({
					url : "${pageContext.request.contextPath}/member/getPw",
					type : "post",
					data : info,
					dataType : "json",
					contentType : "application/json; charset=UTF-8",
					success : function(data){
						console.log(data);
						if(data.code == 'FAIL'){
							$('#errmsgs').html("비밀번호가 틀렸습니다.");
							$('#errmsgs').css("color","red");
							$('#pwcheck').val("");
						}else{
							$.ajax({
								url : "${pageContext.request.contextPath}/member/doDel",
								type : "post",
								data : info,
								dataType : "json",
								contentType : "application/json; charset=UTF-8",
								success : function(e){
									if(e.code == "OK"){
										alert("그동안 이용해 주셔서 감사합니다.");
										location.href = "${pageContext.request.contextPath}";
									}else{
										alert("에러가 발생했습니다.");
									}
								}
						});
					}
					}
				});
			});
			$('#cancel').click(function(){
				modal.style.display = "none";
				$('#pwcheck').val("");
			});
		});
	</script>
</body>
</html>
