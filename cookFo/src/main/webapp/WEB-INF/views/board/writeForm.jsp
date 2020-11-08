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
<script type="text/javascript">
	function add(){
		$('#title_msg').text("");
		$('#pw_msg').text("");
		$('#content_msg').text("");
		if($('#title').val().length <= 0){
			$('#title_msg').text("제목을 입력해주세요");
			$('#title_msg').css("color","red");
			return;
		}
		if($('#pw').val().length <= 0){
			$('#pw_msg').text("패스워드를 입력해주세요");
			$('#pw_msg').css("color","red");
			return;
		}
		if($('#content').val().length <= 0){
			$('#content_msg').text("내용 입력해주세요");
			$('#content_msg').css("color","red");
			return;
		}
		$('#writeForm').method = "post";
		$('#writeForm').submit();
		
	}
</script>
<body>
	<%@ include file="/WEB-INF/views/include/nav_head.jsp"%>
	<%@ include file="/WEB-INF/views/include/nav.jsp"%>
	<br>
	<br>

	<div class="container">
		<div class="row">
			<form method="post" action="${pageContext.request.contextPath}/board/doAdd" id="writeForm" style="width: 1200px;">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">게시판
								글쓰기 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="제목" name="title" maxlength="100" id="title"/>
								<div id="title_msg"></div></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="작성자" name="writer" id="writer" value="${sessionScope.info.id }" readonly="readonly"/></td>
						</tr>
						<tr>
							<td><input type="password" class="form-control"
								placeholder="비밀번호" name="pw" id="pw" maxlength="40" />
								<div id="pw_msg"></div></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="내용"
									name="content" maxlength="3000" id="content" style="height: 350px;"></textarea>
									<div id="content_msg"></div></td>
						</tr>
					</tbody>
				</table>
				<input type="button" class="btn btn-primary pull-right" onClick="add();" value="글쓰기" />
			</form>
		</div>
	</div>

	<br>
	<br>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>
