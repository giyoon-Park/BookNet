<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test </title>
<link rel="stylesheet" href="/BookNet/css/w3.css" />
<script type="text/javascript" src="/BookNet/js/jquery-3.5.0.min.js"></script>
<style>
	.lbl1 {
		min-width: 80px;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('#lbtn').click(function(){
			// 할일
			// 1. 데이터 읽고
			var sid = $('#id').val();
			var spw = $('#pw').val();
			// 2. 유효성 검사하고
			if(!sid){
				$('#id').focus();
				return;
			}
			if(!spw){
				$('#pw').focus();
				return;
			}

			$('#frm').attr('method', 'POST');
			$('#frm').attr('action', '/BookNet/member/loginProc.cls');
			$('#frm').submit();
		});

		<%
			String sid = (String)session.getAttribute("SID");
		%>
	
		// 로그인 여부에 따른 처리
		var sid = '<%= sid %>';
		/* alert(typeof sid); */
		if(sid != 'null' && sid.length != 0 ){
			$('#loginWin').css('display', 'none');
			$('#msg').html(sid);
			$('#msgWin').css('display', '');
		}
		
		<%
	      // 세션 초기화
	      session.invalidate();
	   %>
	   
	   $('#hbtn').click(function(){
		  $(location).attr('href', '/BookNet/main.cls') 
	   });
	});
</script>
</head>
<body>
	<div class="w3-third"><p></p></div>
	<div class="w3-third" id="loginWin">
		<h2 class="w3-blue w3-center w3-round-large w3-border w3-card-4">Login</h2>
		<form class="w3-col w3-margin-top w3-padding w3-round-large w3-border w3-card-4" id="frm" name="frm">
			<div class="w3-row w3-padding">
				<label class="w3-col m3 w3-padding w3-right-align lbl1" for="id">I D : </label>
				<input type="text" id="id" name="id" class="w3-col l9 m12 s12 w3-border w3-input">
			</div>
			<div class="w3-row w3-padding">
				<label class="w3-col m3 w3-padding w3-right-align lbl1" for="pw">P W : </label>
				<input type="password" id="pw" name="pw" class="w3-col l9 m12 s12 w3-border w3-input">
			</div>
		</form>
		<div class="w3-col w3-margin-top w3-round-large w3-border w3-card-4">
			<div class="w3-half w3-red w3-button" id="hbtn">Home</div>
			<div class="w3-half w3-blue w3-button" id="lbtn">Login</div>
		</div>
	</div>
	<div class="w3-third" id="msgWin" style="display: none;">
		<h2 class="w3-col m4 w3-margin-top" style="padding-top: 80px; height: 250px; text-align: right" id="msg"></h2>
		<h2 class="w3-col m8 w3-margin-top" style="padding-top: 80px; height: 250px;"> 님이 로그인 했습니다.</h2>
	</div>
</body>
</html>