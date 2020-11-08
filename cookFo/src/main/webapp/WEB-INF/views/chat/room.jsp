<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.js"></script>
<html>
<head>
<title>쿸포</title>
<script type="text/javascript">
	$(document).ready(function() {
		$("#sendBtn").click(function() {
			sendMessage();
		});
	});

	//websocket을 지정한 URL로 연결
	var sock = new SockJS("<c:url value="/echo"/>");
	//websocket 서버에서 메시지를 보내면 자동으로 실행된다.
	sock.onmessage = onMessage;
	//websocket 과 연결을 끊고 싶을때 실행하는 메소드
	sock.onclose = onClose;

	function sendMessage() {
		//websocket으로 메시지를 보내겠다.
		sock.send($('#id').val() + " : " + $('#message').val());
		$('#message').val('');
	}

	//evt 파라미터는 websocket이 보내준 데이터다.
	function onMessage(evt) { //변수 안에 function자체를 넣음.
		var data = evt.data;
		$("#divChatData").append(data + "<br/>");
		/* sock.close(); */
	}

	function onClose(evt) {
		$("#divChatData").append("연결 끊김");
	}

	function enterkey() {
        if (window.event.keyCode == 13) {
			sendMessage();
        }
	}

</script>
</head>
<body>
	<%
		int val = (int)((Math.random()*200)+1);
	%>
	<%@ include file="/WEB-INF/views/include/nav_head.jsp"%>
	<%@ include file="/WEB-INF/views/include/nav.jsp"%>
	<br>
	<br>

	<h2 class="container-fluid text-center bg-grey">대화방</h2>
	<div class="container">
		<div class="messaging ">
			<div class="inbox_msg">
				<div class="container-fluid text-center">
					<div class="divChat" id="msg_his"
						style="width: 100%; height: 71%; padding: 10px; overflow-y: scroll; word-break: break-all; border-bottom: solid 1px #e1e3e9;">
						<div id="divChatData" style="text-align:left">
							<font color="red">&nbsp;&nbsp;<b>[알림]</b></font><br> 
							<font color="red">* 요리에 대해 여러가지 이야기를 하는 공간입니다.</font><br>
							<font color="red">* 상대방에 대한 매너채팅 부탁드립니다 ^^</font><br> 
						</div>
					</div>
				</div>
			</div>
			<div class="type_msg">
				<div class="input_msg_write">
					<input type="text" class="write_msg" id="message"
						placeholder="Type a message" style="width: 1000px;" onkeyup="enterkey();"/>
					<button type="button" style="width: 100px;" onClick="sendMessage();">전송</button>
					<c:choose>
						<c:when test="${sessionScope.info ne null }">
							<input type="hidden" id="id" value="${sessionScope.info.id }">
						</c:when>
						<c:otherwise>
							<input type="hidden" id="id" value="게스트<%=val%>">
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>
