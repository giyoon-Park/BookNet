<!--
작성자: 이명환
작성일: 20.05.26
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디/비밀번호 찾기</title>
<link rel="stylesheet" href="../css/w3.css"/>
<script type="text/javascript" src="../js/jquery-3.5.0.min.js"></script>
<style>

</style>
<script type="text/javascript">
	$(function(){
		$('#btn1').click(function(){
			$('#f_write').css('display', '');
			$('.idid').css('display', 'none');
			$('#id').val('');
		});
		
		$('#btn2').click(function(){
			$('#f_write').css('display', '');
			$('.idid').css('display', '');
		});
		
		
		$('#mailUtil').click(function(){
			$.ajax({
				url: '/BookNet/ajax/mailProc.cls',
				type: 'post',
				datatype: 'json',
				success: function(obj){
					$('#frm').attr('action', '/BookNet/member/mail.cls');
					alert('인증번호가 발송되었습니다. 이메일을 확인해주세요.');
					$('#frm').submit();
				},
				error: function(){
					alert('통신에러');
				}
			});
			
		});
		
		$('#confirm').click(function(){
			var id = $('#id').val();
			var name = $('#name').val();
			var cert_no = $('#cert_no').val();
			if(idcon == '') {
				if(name == '') {
					alert('이름을 입력하세요');
					return;
				}
				if(cert_no == '') {
					alert('인증번호를 입력하세요');
					return;
				}
				$('#frm').attr('action','/BookNet/member/findIDProc.cls');
			} else {
				if(name == '') {
					alert('이름을 입력하세요');
					return;
				}
				if(cert_no == '') {
					alert('인증번호를 입력하세요');
					return;
				}
				$('#frm').attr('action','/BookNet/member/findPWProc.cls');
			}
			
			$('#frm').submit();
		});
	});
</script>
</head>
<body>
	<form id="frm" method="post" action="">
		
		<input type="hidden" id="cert_no" name="cert_no" value="">
	
		<div class="w3-content" style="max-width: 600px;" id="loginWin">
			<span class="w3-half w3-red w3-button w3-padding w3-center w3-margin-top" id="btn1">아이디찾기</span>
			<span class="w3-half w3-blue w3-button w3-padding w3-center w3-margin-top" id="btn2">비밀번호찾기</span>
			<div class="w3-col w3-padding w3-card-4 w3-round-large w3-border w3-margin-top" id="f_write" style="display: none;">
				<label for="id" class="idid w3-col m2 w3-right-align w3-padding-16">아이디 : </label>
				<div class="idid w3-col m10 w3-padding">
					<input type="text" class="w3-col w3-input w3-border" id="id" name="id">
				</div>
				<label for="name" class="w3-col m2 w3-right-align w3-padding-16">이름 : </label>
				<div class="w3-col m10 w3-padding">
					<input type="text" class="w3-col w3-input w3-border" id="name" name="name">
				</div>
				<label for="mail" class="w3-col m2 w3-right-align w3-padding-16">이메일 : </label>
				<div class="w3-col m10 w3-padding">
					<input type="text" class="w3-col m8 w3-input w3-border" id="mail" name="mail">
					<span class="w3-col m3 w3-card w3-button" style="height: 40px; margin-left: 32px;" id="mailUtil">인증번호받기</span>
				</div>
				<label for="cert_no" class="w3-col m2 w3-right-align w3-padding-16">인증번호 : </label>
				<div class="w3-col m10 w3-padding">
					<input type="text" class="w3-col w3-input w3-border" id="cert_no" name="cert_no">
				</div>
				<div class="w3-col w3-margin-top">
					<h3 class="w3-padding w3-blue w3-center w3-card-4 w3-round-large" id="confirm">확인</h3>
				</div>
			</div>
		</div>
	</form>
</body>
</html>