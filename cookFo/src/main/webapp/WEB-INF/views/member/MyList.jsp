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
		$(document).ready(function(){
			var id = '${sessionScope.info.id}';
			const param = JSON.stringify({id:id});
			$.ajax({
				data : param,
				url : "${pageContext.request.contextPath}/jjim/myRecipe",
				type : "post",
				datatype : "json",
				contentType : "application/json; charset=UTF-8",
				success : function(data){
					console.log(data);
					for(var i=0; i<data.length; i++){
						var html = "";
						html += "<tr class='Info"+i+" success'>"
						html += "<td>" + "<a href='javascript:;'> <span class='item"+i+"'>"  + data[i] +  "</span> </a> </td>"
						html += "<td>"
						html += "<a href='javascript:;' onClick='del(" + i + ")';>삭제</a>"
						html += "</td>";
						html += "<tr>";
						$('.list').append(html);
					}
				}			
			});
		})
	</script>
	
	<%@ include file="/WEB-INF/views/include/nav_head.jsp"%>
	<%@ include file="/WEB-INF/views/include/nav.jsp"%>
	<div class="container">
		<h2>나의 레시피 저장소</h2>
		<table class="table">
			<thead>
				<tr>
					<th>이름</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody class="list">
				
			</tbody>
		</table>
	</div>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	
	<script type="text/javascript">
		function del(data){
			var id = '${sessionScope.info.id}';
			var name = $('.item'+data).text();
			console.log(id + " " + name);
			const param = JSON.stringify({id:id, name:name});
			$.ajax({
				data : param,
				url : "${pageContext.request.contextPath}/jjim/delJjim",
				type : "post",
				datatype : "json",
				contentType : "application/json; charset=UTF-8",
				success : function(e){
					if(e.code == 'OK'){
						$("tr").remove('.Info'+data);
					}else{
						alert("삭제에 실패했습니다.");
					}
				},
				error : function(e){
					console.log(e);
				}
			});
		}
	</script>
</body>
</html>
