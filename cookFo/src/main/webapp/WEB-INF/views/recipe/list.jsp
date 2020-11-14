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

	<div class="container-fluid text-center bg-grey">
		<h2>레시피</h2>
		<br>
		<div class="row">
			<div class="col-sm-3">
				<a href="#">전체</a>
			</div>
			<div class="col-sm-3">
				<a href="#">국</a>
			</div>
			<div class="col-sm-3">
				<a href="#">반찬</a>
			</div>
			<div class="col-sm-3">
				<a href="#">기타</a>
			</div>
		</div>
		<br> <br>
		<div class="listrecipe text-center ">
			<c:forEach var="row" items="${list }">
				<div class="col-sm-4">
					<div class="thumbnail">
						<img src="http://localhost:9080/img/${row.img1 }"
							alt="Random Name" style="width: 200; height: 200;">
						<p>
							<strong><a href="${pageContext.request.contextPath}/recipe/recipeView/${row.rno}">${row.name }</a></strong>
						</p>
						<p>${row.category }</p>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<br><br><br>
	<div class="container" style="padding-left: 200px;">
	 <div class="row">
        <div class="col-md-4 col-md-offset-3">
            <form action="" class="search-form">
                <div class="form-group has-feedback" style="display: flex;">
            		<label for="search" class="sr-only">검색</label>
            		<input type="text" class="form-control" name="search" id="search" placeholder="search">
              		<button type="button" id="find" class="btn btn-primary">
					검색<i class="fa fa-check spaceLeft"></i>
					</button>
            	</div>
            </form>
        </div>
    </div>
    </div>
	
	<div class="container">
		<button type="button" id="addRecipe" class="btn btn-primary"
			onClick="location.href='${pageContext.request.contextPath}/recipe/addForm'">
			등록<i class="fa fa-check spaceLeft"></i>
		</button>
	</div>
	<br>
	<br>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	
	<script type="text/javascript">
		$('#find').click(function(){
			var name = $('#search').val();
			console.log(name);
			$('#search').val("");
			const param = JSON.stringify({name:name});
			$.ajax({
				data : param,
				url : "${pageContext.request.contextPath}/recipe/search",
				type : "post",
				datatype : "json",
				contentType : "application/json; charset=UTF-8",
				success : function(data){
					$('div').remove(".thumbnail")
					for(var i=0; i<data.length; i++){
						var html = "";
						html += "<div class='col-sm-4'>"
						html += "<div class='thumbnail'>"
						html += "<img src='http://localhost:9080/img/"+data[i].img1+"'"
						html += "alt='Random Name' style='width: 200; height: 200;'>"
						html += "<p>"
						html += "<strong><a href='${pageContext.request.contextPath}/recipe/recipeView/"+data[i].rno+"'>"+data[i].name+"</a></strong>"
						html += "</p>"
						html += "<p>"+data[i].category+"</p>"
						html += "</div>"
						html += "</div>";
						$('.listrecipe').append(html);
						console.log(html);
					}
				}			
			});
		})
	</script>
</body>
</html>
