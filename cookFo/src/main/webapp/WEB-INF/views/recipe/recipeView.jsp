<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet"> <!--CDN 링크 -->
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
	<script type="text/javascript">
		var toggle = 0;
		console.log("시작 토글 : " + toggle);
		$(document).ready(function(){
			var id = '${sessionScope.info.id}';
			var name = '${vo.name}';
			const param = JSON.stringify({id:id, name:name});
			$.ajax({
				data : param,
				url : "${pageContext.request.contextPath}/jjim/check",
				type : "post",
				datatype : "json",
				contentType : "application/json; charset=UTF-8",
				success : function(data){
					if(data.code == 'OK'){
						$('.far').attr('class','fas fa-star');
						toggle = 1;
						console.log(toggle);
					}else{
						toggle = 0;
						console.log(toggle);
					}
				}			
			});
		});
	</script>
	
	<%@ include file="/WEB-INF/views/include/nav_head.jsp"%>
	<%@ include file="/WEB-INF/views/include/nav.jsp"%>
	<br>
	<br>
	<div class="container p-3 my-3 bg-dark text-white">${vo.name }
	<c:if test="${sessionScope.info ne null }">
	 <a href="javascript:;" class="addjjim"><i class="far fa-star" style="color:yellow;"></i></a>
	</c:if>
	</div>
	<div class="container-fluid bg-3 text-center">
		<div class="container">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="http://localhost:9080/img/${vo.img1 }" alt="New York"
							style="width: 100%; height: 500px;">
					</div>

					<div class="item">
						<img src="http://localhost:9080/img/${vo.img2 }" alt="New York"
							style="width: 100%; height: 500px;">
					</div>

					<div class="item">
						<img src="http://localhost:9080/img/${vo.img3 }" alt="New York"
							style="width: 100%; height: 500px;">
					</div>
					<div class="item">
						<img src="http://localhost:9080/img/${vo.img4 }" alt="New York"
							style="width: 100%; height: 500px;">
					</div>
					<div class="item">
						<img src="http://localhost:9080/img/${vo.img5 }" alt="New York"
							style="width: 100%; height: 500px;">
					</div>
				</div>
			</div>
			<br> <br>
			<div class="row">
				<div class="col-sm-3">
					<img src="http://localhost:9080/img/${vo.img2 }" alt="Image"
						style="width: 250px; height: 250px;">
				</div>
				<div class="col-sm-3">
					<img src="http://localhost:9080/img/${vo.img3 }" alt="Image"
						style="width: 250px; height: 250px;">
				</div>
				<div class="col-sm-3">
					<img src="http://localhost:9080/img/${vo.img4 }" alt="Image"
						style="width: 250px; height: 250px;">
				</div>
				<div class="col-sm-3">
					<img src="http://localhost:9080/img/${vo.img5 }" alt="Image"
						style="width: 250px; height: 250px;">
				</div>
			</div>
		</div>
		<br> <br>
	</div>
	<div class="container alert alert-success">
		<strong>${vo.way }</strong>
	</div>

	<br>
	<br>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	<script type="text/javascript">
		$('.addjjim').click(function(){
			var id = '${sessionScope.info.id}';
			var name = '${vo.name}';
			const param = JSON.stringify({id:id, name:name});
			if( toggle == 0){
				$.ajax({
					data : param,
					url : "${pageContext.request.contextPath}/jjim/addJjim",
					type : "post",
					datatype : "json",
					contentType : "application/json; charset=UTF-8",
					success : function(data){
						if(data.code == 'OK'){
							$('.far').attr('class','fas fa-star');
							toggle = 1;
						}
					}			
				});
			}else{
				$.ajax({
					data : param,
					url : "${pageContext.request.contextPath}/jjim/delJjim",
					type : "post",
					datatype : "json",
					contentType : "application/json; charset=UTF-8",
					success : function(data){
						if(data.code == 'OK'){
							$('.fas').attr('class','far fa-star');
							toggle = 0;
						}
					}			
				});
			}
		});

		
	</script>
</body>
</html>
