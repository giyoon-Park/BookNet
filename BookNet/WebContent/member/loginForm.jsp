<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="/BookNet/css/w3.css">
<link rel="stylesheet" href="/BookNet/css/user.css">
<script type="text/javascript" src="/BookNet/js/jquery-3.5.0.min.js"></script>
<style>
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('#lbtn').click(function(){
			//데이터 읽기 
			var sid = $('#id').val(); //입력된 아이디 값을 변수 sid에 저장 
			var spw = $('#pw').val(); 
			//유효성 검사하기(값이 들어왔는지 확인)
			if(!sid){
				$('#id').focus(); //아이디에 값이 들어오지 않았다면 id 입력하는 input 태그에 focus 해주라는 뜻. 
				return;
			}
			if(!spw){
				$('#pw').focus();
				return;
			}
			
			$('#frm').attr('method', 'POST');
			$('#frm').attr('action', '/BookNet/member/loginProc.cls'); //로그인버튼을 눌렀을 때 이동할 컨트롤러 
			$('#frm').submit(); //form 태그의 값들을 파라미터로 하여 loginProc 으로 이동한다.
			
			//alert('로그인에 실패하였습니다. 아이디 혹은 비밀번호를 확인해주세요.');
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
</body>
</html>