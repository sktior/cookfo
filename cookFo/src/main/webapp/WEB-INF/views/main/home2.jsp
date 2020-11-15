<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
</head>
<body>
	<script type="text/javascript">
		$(document).ready(function(){
			$.ajax({
				url : "${pageContext.request.contextPath}/recipe/rowfat",
				type : "post",
				dataType : "json",
				contentType : "application/json; charset=UTF-8",
				success : function(data) {
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
						$('.container').append(html);
					}
				}
			})
		})		
	</script>
	<div class="container text-center">
		<h2>저지방 레시피</h2><br><br>
	</div>
	
</body>
</html>
