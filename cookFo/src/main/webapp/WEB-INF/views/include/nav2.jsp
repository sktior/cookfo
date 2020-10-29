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
	<nav>
		<div class="nav nav-tabs" id="nav-tab" role="tablist">
			<a class="nav-item nav-link active" id="home1"
				data-toggle="tab" href="#nav-home" role="tab"
				aria-controls="nav-home" aria-selected="true">메인</a> <a
				class="nav-item nav-link" id="home2" data-toggle="tab"
				href="#nav-profile" role="tab" aria-controls="nav-profile"
				aria-selected="false">인기 레시피</a> <a class="nav-item nav-link"
				id="home3" data-toggle="tab" href="#nav-contact"
				role="tab" aria-controls="nav-contact" aria-selected="false">오늘의 요리</a>
		</div>
	</nav>
	<div id="content">
	</div>
	
	<script type="text/javascript">
	$("document").ready(function(){
		$('#content').load("${pageContext.request.contextPath}/home1");
	})
		$('#home1').click(function(){
			$('#content').empty();	
			$('#content').load("${pageContext.request.contextPath}/home1");
		})
		
		$('#home2').click(function(){
			$('#content').empty();	
			$('#content').append("home2");
		})
		
		$('#home3').click(function(){
			$('#content').empty();	
			$('#content').append("home3");
		})
	</script>
</body>
</html>
