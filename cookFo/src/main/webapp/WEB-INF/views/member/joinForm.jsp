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
				<h3>회원가입 Form</h3>
			</div>
		</div>
		<div class="col-sm-6 col-md-offset-3">
			<form role="form" action="#" id="memberForm">
				<div class="form-group">
					<label for="inputName">성명</label> <input type="text"
						class="form-control" id="name" name="name" placeholder="이름을 입력해 주세요">
				</div>
				<div class="form-group">
					<label for="inputId">아이디</label> <input type="text"
						class="form-control" id="id" name="id" placeholder="이름을 입력해 주세요">
						<button type="button" id="idchk" class="btn btn-primary" onclick="chkID();">중복체크</button>
						<div id="idMessage"></div>
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
						class="form-control" id="email" name="email" placeholder="이메일 주소를 입력해주세요">
					<button type="button" id="emailchk" class="btn btn-primary" onclick="chkEMAIL();">중복체크</button>
					<div id="emailMessage"></div>
				</div>
				<div class="form-group">
					<label for="InputAddress">주소</label> <input type="text"
						class="form-control" id="detailAddress1" placeholder="상세주소" readonly="readonly">
						<input type="text" class="form-control" id="detailAddress2" placeholder="상세주소" readonly="readonly">
					<input type="text" class="form-control" id="modAddress"
						placeholder="나머지주소">
					<button type="button" id="findAddress" class="btn btn-primary" onclick="execPostCode();">
						주소검색<i class="fa fa-check spaceLeft"></i>
					</button>
					<input type="hidden" id="address" name="address">
				</div>

				<div class="form-group text-center">
					<button type="button" id="join-submit" class="btn btn-primary">
						회원가입<i class="fa fa-check spaceLeft"></i>
					</button>
					<button type="submit" class="btn btn-warning">
						가입취소<i class="fa fa-times spaceLeft"></i>
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
	function execPostCode() {
        new daum.Postcode({
            oncomplete: function(data) {
               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

               // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
               var extraRoadAddr = ''; // 도로명 조합형 주소 변수

               // 법정동명이 있을 경우 추가한다. (법정리는 제외)
               // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
               if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                   extraRoadAddr += data.bname;
               }
               // 건물명이 있고, 공동주택일 경우 추가한다.
               if(data.buildingName !== '' && data.apartment === 'Y'){
                  extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
               }
               // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
               if(extraRoadAddr !== ''){
                   extraRoadAddr = ' (' + extraRoadAddr + ')';
               }
               // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
               if(fullRoadAddr !== ''){
                   fullRoadAddr += extraRoadAddr;
               }

               // 우편번호와 주소 정보를 해당 필드에 넣는다.
               console.log(data.zonecode);
               console.log(fullRoadAddr);
               
               
               $("[id=detailAddress1]").val(data.zonecode);
               $("[id=detailAddress2]").val(fullRoadAddr);
               
               /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
               document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
               document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
           }
        }).open();
    }
		
	</script>
	
	<script type="text/javascript">
	function chkID(){
		let id = $('#id').val();
		if(id.length <= 4){
			$('#idMessage').text("아이디를 5자 이상 입력해주세요");
			$('#idMessage').css("color","red");
			return;
		}
		console.log(id);
		const info = JSON.stringify({id,id});
		$.ajax({
			url : "${pageContext.request.contextPath}/chk/chkID",
			type : "post",
			data : info,
			dataType : "json",
			contentType : "application/json",
			success:function(data){
				if(data.result == "true"){
					$('#idMessage').text("사용할 수 있는 아이디입니다.");
					$('#idMessage').css("color","green");
				}else{
					$('#idMessage').text("사용할 수 없는 아이디입니다.");
					$('#idMessage').css("color","red");
				}
			}
		})
	}
	function chkEMAIL(){
		let email = $('#email').val();
		var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		if(email.match(regExp) == null){
			$('#emailMessage').text("이메일 형식을 옳바르게 입력해주세요.");
			$('#emailMessage').css("color","red");
			return;
		}
		const info = JSON.stringify({email,email});
		$.ajax({
			url : "${pageContext.request.contextPath}/chk/chkEMAIL",
			type : "post",
			data : info,
			dataType : "json",
			contentType : "application/json",
			success:function(data){
				if(data.result == "true"){
					$('#emailMessage').text("사용할 수 있는 이메일입니다.");
					$('#emailMessage').css("color","green");
				}else{
					$('#emailMessage').text("사용할 수 없는 이메일입니다.");
					$('#emailMessage').css("color","red");
				}
			}
		})
	}
	</script>
	<script type="text/javascript">
		$('#join-submit').click(function(){
			if($('#name').val().length == 0){
				alert("이름을 입력하세요.");
				return;
			}
			if(document.getElementById('idMessage').innerText != '사용할 수 있는 아이디입니다.'){
				alert("아이디를 확인하세요.");
				return;
			}
			var pw = $('#pw').val();
			var checkpw = /^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).{10,12}$/.test(pw);  //영문,특수문자
			console.log(pw);
			if(!checkpw){
				alert("비밀번호를 특수문자를 포함하여 입력하세요");
				return;
			}
			if( pw != $('#pwchk').val()){
				alert("비밀번호가 일치하지 않습니다.");
				return;
			}
			if(document.getElementById('emailMessage').innerText != '사용할 수 있는 이메일입니다.'){
				alert("이메일을 확인하세요.");
				return;	
			}
			$('#address').val($("#detailAddress1").val() + " " + $("#detailAddress2").val() + " " + 
					$("#modAddress").val());
			console.log($('#address').val());
			if($("#detailAddress1").val().length == 0 || $("#detailAddress2").val().length == 0){
				alert("상세주소를 입력하세요.");
				return;
			}
			$('#memberForm').attr("action","${pageContext.request.contextPath}/member/newMember");
			$('#memberForm').attr("method","post");
			$('#memberForm').submit();
		})
	</script>
</body>
</html>
