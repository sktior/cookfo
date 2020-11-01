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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<html>
<head>
<title>쿸포</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/nav_head.jsp"%>
	<%@ include file="/WEB-INF/views/include/nav.jsp"%>
	<article class="container">
		<div class="page-header">
			<div class="col-md-6 col-md-offset-3">
				<h3>비밀번호 변경</h3>
			</div>
		</div>
		<div class="col-sm-6 col-md-offset-3">
			<form role="form" action="#" id="memberForm">
				<div class="form-group">
					<label for="inputName">성명</label> <input type="text"
						class="form-control" id="name" name="name" value="${sessionScope.info.name }" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="inputId">아이디</label> <input type="text"
						class="form-control" id="id" name="id" value="${sessionScope.info.id }" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="inputPassword">비밀번호</label> <input type="password"
						class="form-control" id="pw" name="pw" placeholder="비밀번호를 입력해주세요">
				</div>
				<div class="form-group">
					<label for="inputPasswordCheck">비밀번호 확인</label> <input
						type="password" class="form-control" id="pwchk"
						placeholder="비밀번호 확인을 위해 다시한번 입력 해 주세요">
				</div>
				<div class="form-group">
					<label for="InputEmail">이메일</label> <input type="email"
						class="form-control" id="email" name="email" value="${sessionScope.info.email }" readonly="readonly">
				</div>
				<div class="form-group text-center">
					<button type="button" id="join-submit" class="btn btn-primary">
						수정완료<i class="fa fa-check spaceLeft"></i>
					</button>
					<button type="submit" class="btn btn-warning">
						수정취소<i class="fa fa-times spaceLeft"></i>
					</button>
				</div>
			</form>
		</div>
	</article>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	
	<script type="text/javascript">
		$('#join-submit').click(function(){
			var pw = $('#pw').val();
			var checkpw = /^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).{10,12}$/.test(pw);  //영문,특수문자
			if(!checkpw){
				alert("비밀번호를 특수문자를 포함하여 입력하세요");
				return;
			}
			if( pw != $('#pwchk').val()){
				alert("비밀번호가 일치하지 않습니다.");
				return;
			}
			$('#memberForm').attr("action","${pageContext.request.contextPath}/member/doMod");
			$('#memberForm').attr("method","post");
			$('#memberForm').submit();
		})
	</script>
</body>
</html>
