<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고정페이지 틀</title>
<link rel="stylesheet" href="/BookNet/css/proj.css">
<link rel="stylesheet" href="/BookNet/css/modal.css">
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" /> -->
<script type="text/javascript" src="/BookNet/js/jquery-3.5.0.min.js"></script>
<style>
</style>
<script type="text/javascript">
	$(document).ready(
		function() {
			$('#more_butt').click(function() { //modal에서 알림페이지로 이동 
				$(location).attr('href', '/BookNet/fixed/activity.cls');
			});

			$('#aBtn').click(function() { //modal 열기
				$('#actModal').css('display', 'block');
			});

			$('#close_butt').click(function() { //modal 닫기버튼 
				$('#actModal').css('display', 'none');
			});
			
			$('#likebtn').click(function(){ //like 버튼 클릭시 빨강하트로 변경 
				$(this).css('background-position', '-208px -370px');
			});

			//무한스크롤
			var maxHeight = $(document).height();
			var currentScroll = $(window).scrollTop() + $(window).height();

			if (maxHeight <= currentScroll + 100) {
				$('#contents-wrap').append(
						'<div class="border:20px solid black">앗..</div>');
			}
	});
</script>
</head>
<body>
	<div>
		<!-- 본문부분 -->
		<div id="contents-wrap">
			<div class="contents">
				<!-- 좌측 게시글 부분 -->
				<div class="posts_area">
					<article class="eachPost" id="이곳은게시물번호가들어갈자리">
						<!-- 작성자 정보 & 버튼 :: 아이디 불러와야함  -->
						<div class="wrtInfo">
							<div class="wrtProf">
								<img src="">
							</div>
							<div class="wrter" id="">
								<b>작성자아이디</b>
							</div>
							<div class="like-butt" id="">
								<span style="font-size: 12px; line-height: 0px;" class="comt-img"></span>
							</div>
							<div class="like-butt" id="" style="display: flex;'">
								<span style="font-size: 12px; line-height: 0px;" class="like-img" id="likebtn"></span>
							</div>
						</div>
						<!-- 게시글의 본문부분::도서사진,도서이름,본문 -->
						<div class="postCont" style="text-align: center; font-size: 16px;">
							<!-- 도서사진, 도서이름, 게시글본문 -->
							<div class="book-pic">
								<!-- 도서 사진 들어갈 부분 -->
							</div>
							<div class="book-name">
								<!-- 도서명 들어갈 부분 -->
							</div>
							<div class="post-body">
								<!-- 게시글 부분 -->
							</div>
						</div>
						<div class="etcdiv" style="text-align: center; font-size: 16px;">
							태그<!-- 게시글 해시태그 부분 -->
						</div>
					</article>
				</div>
				<!-- 우측 정보 부분 : 고정페이지로 들어갈 것-->
				<div class="info_area">
					<div style="width: 100%; height: 200px; margin-top: 15px; border: solid 1px white;">
						<a>김이슬!</a>
					</div>
					<div style="width: 100%; height: 200px; margin-top: 15px; border: solid 1px white;">
						<a></a>
					</div>
				</div>
				<!-- 우측 정보 끝! -->
			</div>
		</div>
		<!-- 헤더부분 -->
		<div id="header-wrap">
			<div class="header">
				<div class="logobox">
					<div
						style="box-sizing: border-box; font-size: 30px; text-align: center;">
						<!-- 로고 이미지 혹은 링크 들어갈 자리 class="div_logo" -->
						<a href="/BookNet/main/mem_main.cls">PageTurner</a>
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
								<div id="modal-content" class="modal-content">
									<!-- <span class="close" id="close_butt">x</span> -->
									<input type="button" value="x" class="close" id="close_butt" />
									<!-- onclick="document.getElementById('actModal').style.display='none'" -->
									<p>Some Text....</p>
									<div
										style="width: 100%; height: 30px; line-height: 30px; background-color: rgba{0, 0, 0, 4">
										<!-- <input type="button" value="MORE" id="more_butt" style="width: 100%; box-sizing: border-box;"/> -->
										<div style="width: 100%; text-align: center" id="more_butt">MORE</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<span class="span_icons"> 
						<img class="iconimg" id="" src="/BookNet/img/iconmonstr-compass-4-240.png">
					</span> <span class="span_icons" id=> <img class="iconimg" id=""
						src="/BookNet/img/iconmonstr-pen-15-240.png">
					</span> <span class=span_icons> <img class="iconimg" id=""
						src="/BookNet/img/iconmonstr-user-19-240.png">
					</span>
				</div>
			</div>
		</div>
		<!-- 풋터부분 -->
		<div id="footer-wrap">
			<div class="footer" style="text-align: center;">footer</div>
		</div>
	</div>
</body>
</html>