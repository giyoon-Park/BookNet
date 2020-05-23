<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html style="background-color:#F2F2F2">
<head>
<meta charset="UTF-8">
<title>알림페이지</title>
<link rel="stylesheet" href="/BookNet/css/proj_fixed.css">
<link rel="stylesheet" href="/BookNet/css/modal.css">
<link rel="stylesheet" href="/BookNet/css/w3.css">
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" /> -->
<script type="text/javascript" src="/BookNet/js/jquery-3.5.0.min.js"></script>
<style>
	.w-x-btn {margin: 5px; width: 10px; height: 10px; line-height: 10px; font-size: 13px;}
	.w-b-input {text-align: left; width: 100%; height: 40px; line-height: 40px;}
	.wrt-div {width: 100%; height: 220px; line-height: 220px; margin-top: 25px;}
	.wrt-b-img {float: left; width: 180px; margin: 0 15px; border: dashed 1px blue; text-align: center;}
	.wrt-body {float: left; width: 440px; height: 225px; line-height: 255px; padding: 10px; text-align: center;}
	.-a-t {float: left; width: 425px; height: 150px; line-height: 150px; margin-top: 13px;}
	.wrt-last {width: 100%; height: 50px; line-height: 50px; padding-top: 10px; margin-top: 10px;}
	.hash-input {float: left; width: 500px; height: 40px; line-height: 40px;}
	.p-submit {float: right; width: 130px; height: 40px; line-height: 40px;}
</style>	
<script type="text/javascript">
	$(document).ready(
		function() {
			$('#more_butt').click(function() { //modal에서 알림페이지로 이동 
				$(location).attr('href', '/BookNet/alarm/alarmPage.cls');
			});

			$('#aBtn').click(function() { //modal 열기
				$('#actModal').css('display', 'block');
			});

			$('#a-close_butt').click(function() { //modal 닫기버튼 
				$('#actModal').css('display', 'none');
			});
			
			$('#likebtn').click(function(){ //like 버튼 클릭시 빨강하트로 변경 
				$(this).css('background-position', '-208px -370px');
			});
			
			$('#wBtn').click(function(){ //글쓰기 modal 열기 
				$('#writeModal').css('display', 'block');
			});
			
			$('#w-close_butt').click(function(){ //글쓰기 모달 닫기 
				$('#writeModal').css('display', 'none');
			});
			
 			$(document).scroll(function() {
    			var maxHeight = $(document).height();
    			var currentScroll = $(window).scrollTop() + $(window).height();
    			if (maxHeight <= currentScroll + 100) {
       				$('.new-act').append();
    			}
			})
	});
</script>
</head>
<body>
	<div>
		<!-- 본문부분 -->
		<div id="contents-wrap">
			<div class="contents">
				<!-- 본문부분 -->
				<div id="contents-wrap">
					<div style="width: 600px; margin: 15px auto; text-align: center;">
						<!-- 알림 반복시켜줘야함. -->
						<%-- <c:forEach begin="1" end="10"> --%>
							<div class="div_activity new-act">
								<div class="prof_div">
									<!-- 프로필 사진 -->
								</div>
								<div class="div_act">
									<!-- 나에게 새로운 알람을 준 회원의 아이디 + 알람의 내용 -->
									<div class="ala_cont" style="font-size: 16px;">
										김수진님이 팔로우하였습니다.
									</div>
								</div>
							</div>
						<%-- </c:forEach> --%>
					</div>
				</div>
			</div>
		</div>
		<!-- 헤더부분 -->
		<div id="header-wrap">
			<div class="header">
				<div class="logobox">
					<div
						style="box-sizing: border-box; font-size: 30px; text-align: center;">
						<!-- 로고 이미지 혹은 링크 들어갈 자리 class="div_logo" -->
						<a href="/BookNet/main/mem.cls">PageTurner</a>
					</div>
				</div>
				<div class="searchbox">
					<input class="searchinput" type="text" placeholder="search">
				</div>
				<div class="iconsbox">
					<!-- 알람표시아이콘 -->
					<div class="span_icons">
						<button type="button" class="butt" id="aBtn">
							<img class="iconimg" id="" src="/BookNet/img/iconmonstr-bell-7-240.png">
						</button>
						<!-- The Modal -->
						<div id="actModal" class="modal" role="none">
							<!-- Modal Content -->
							<div style="width: 900px; height: auto; margin: 0 auto;">
								<div id="modal-content" class="a-modal-content">
									<span class="close w-x-btn" id="a-close_butt">x</span>
									<!-- onclick="document.getElementById('actModal').style.display='none'" -->
									<p>Some Text....</p>
									<div style="width: 100%; height: 30px; line-height: 30px; background-color: rgba(0, 0, 0, 0.4);">
										<!-- <input type="button" value="MORE" id="more_butt" style="width: 100%; box-sizing: border-box;"/> -->
										<div style="width: 100%; text-align: center" id="more_butt">MORE</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="span_icons"> 
						<img class="iconimg" id="" src="/BookNet/img/iconmonstr-compass-4-240.png">
					</div> 
					<div class="span_icons" id=""> 
						<button type="button" class="butt" id="wBtn">
							<img class="iconimg" id="" src="/BookNet/img/iconmonstr-pen-15-240.png">
						</button>
						<!-- The Modal -->
						<div id="writeModal" class="w3-modal">
							<div id="" class="w-modal-content">
								<span class="close w-x-btn" id="w-close_butt">x</span>
									<!-- onclick="document.getElementById('actModal').style.display='none'" -->
								<!-- 도서검색 -->
								<div class="w-b-input">
									<input type="search" id="" placeholder="도서검색"/>
									<input type="button" id="" value="검색" style="width: 40px;"/>
	 							</div>
	 							<div class="wrt-div">
									<div class="wrt-b-img">책!</div>
		 							<div class="wrt-body">
		 								<p style="height: 40px; line-height: 40px;">책 제목</p>
	 									<textarea class="-a-t"></textarea>
	 								</div>
	 							</div>
	 							<div class="wrt-last">
	 								<input type="text" placeholder="hashTags" class="hash-input" id=""/>
	 								<input type="button" value="글 등록" class="p-submit" id="p-submit"/>
	 							</div>
							</div>
						</div>
					</div> 
					<div class="span_icons"> 
						<img class="iconimg" id="" src="/BookNet/img/iconmonstr-user-19-240.png">
					</div>
				</div>
			</div>
		</div>
		<!— 풋터부분 —>
		<div id="footer-wrap">
			<div class="footer" style="text-align: center;">footer</div>
		</div>
	</div>
</body>
</html>
