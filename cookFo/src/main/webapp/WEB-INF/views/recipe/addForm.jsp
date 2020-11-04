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
		<div class="row">
			<form method="post" action="${pageContext.request.contextPath}/recipe/doAdd" style="width: 1200px;" enctype="multipart/form-data">
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
							<td><input type="text" class="form-control" placeholder="메뉴"
								name="name" maxlength="50" /></td>
						</tr>
						<tr>
							<td><select name="category" style="width: 500px;">
									<option value="국">국</option>
									<option value="반찬" selected="selected">반찬</option>
									<option value="기타">기타</option>
							</select></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="칼로리" name="kcal" maxlength="50" /></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="단백질" name="pro" maxlength="50" /></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" placeholder="지방"
								name="fat" maxlength="50" /></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="제조법"
									name="way" maxlength="2048" style="height: 350px;"></textarea></td>
						</tr>
						<tr>
							<td><input type="file" class="form-control-file border"
								name="img1_t" id="img1_t">
								<div class="select_img"><img src="" /></div>
							</td>
						</tr>
						<tr>
							<td><input type="file" class="form-control-file border"
								name="img2_t" id="img2_t">
								<div class="select_img2"><img src="" /></div>
							</td>
						</tr>
						<tr>
							<td><input type="file" class="form-control-file border"
								name="img3_t" id="img3_t">
								<div class="select_img3"><img src="" /></div>	
							</td>
						</tr>
						<tr>
							<td><input type="file" class="form-control-file border"
								name="img4_t" id="img4_t">
								<div class="select_img4"><img src="" /></div>
							</td>
						</tr>
						<tr>
							<td><input type="file" class="form-control-file border"
								name="img5_t" id="img5_t">
								<div class="select_img5"><img src="" /></div>	
							</td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-primary pull-right" value="글쓰기" />
			</form>
		</div>
	</div>

	<br>
	<br>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>


	<script>
		$("#img1")
				.change(
						function() {
							console.log("Ddd");
							if (this.files && this.files[0]) {
								var reader = new FileReader;
								reader.onload = function(data) {
									$(".select_img img").attr("src",
											data.target.result).width(500);
								}
								reader.readAsDataURL(this.files[0]);
							}
						});
		$("#img2")
		.change(
				function() {
					if (this.files && this.files[0]) {
						var reader = new FileReader;
						reader.onload = function(data) {
							$(".select_img2 img").attr("src",
									data.target.result).width(500);
						}
						reader.readAsDataURL(this.files[0]);
					}
				});
		$("#img3")
		.change(
				function() {
					if (this.files && this.files[0]) {
						var reader = new FileReader;
						reader.onload = function(data) {
							$(".select_img3 img").attr("src",
									data.target.result).width(500);
						}
						reader.readAsDataURL(this.files[0]);
					}
				});
		$("#img4")
		.change(
				function() {
					if (this.files && this.files[0]) {
						var reader = new FileReader;
						reader.onload = function(data) {
							$(".select_img4 img").attr("src",
									data.target.result).width(500);
						}
						reader.readAsDataURL(this.files[0]);
					}
				});
		$("#img5")
		.change(
				function() {
					if (this.files && this.files[0]) {
						var reader = new FileReader;
						reader.onload = function(data) {
							$(".select_img5 img").attr("src",
									data.target.result).width(500);
						}
						reader.readAsDataURL(this.files[0]);
					}
				});
	</script>
</body>
</html>
