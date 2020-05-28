<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 이 페이지는 알람 목록을 보여줄 페이지이다.
	@auther	박기윤
	@since	2020.05.27
-->
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
<script type="text/javascript" src="/BookNet/js/fixed.js"></script>
<style>
</style>
<script type="text/javascript">
	$(document).ready(
		function() {
			// 엔터검색
			$('.searchinput').keyup(function(e) {
				if (e.keyCode == 13) {
					var key = $('.searchinput').val();
					alert(key);
					$('#searchinput').val(key);
					$('#frm3').attr('action', '/BookNet/search/searchAll.cls');
					$('#frm3').submit();
				}
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
					<div style="width: 900px; margin: 15px auto; text-align: center;">
						<!-- 알림 반복시켜줘야함. -->
						<c:forEach var="alarm" items="${LIST}">
							<div class="div_activity new-act">
								<div class="prof_div">
									<img src="${alarm.save_loc}" />
								</div>
								<div class="div_act">
									<!-- 나에게 새로운 알람을 준 회원의 아이디 + 알람의 내용 -->
									<div class="ala_cont" style="font-size: 16px;" id="${alarm.pno}">
										<c:if test="${alarm.type eq 'C'}">
											<div>
												<a href="" id="${alarm.id}">${alarm.id}</a>님이 <a href="" id="${alarm.bname}">${alarm.bname}</a> 게시글에 댓글을 달았습니다.
											</div>
										</c:if>
										<c:if test="${alarm.type eq 'L'}">
											<div>
												<a href="" id="${alarm.id}">${alarm.id}</a>님이 <a href="" id="${alarm.bname}">${alarm.bname}</a> 게시글에 좋아요를 눌렀습니다.
											</div>
										</c:if>
										<c:if test="${alarm.type eq 'F'}">
											<div>
												<a href="" id="${alarm.id}">${alarm.id}</a>님이 팔로우하였습니다.
											</div>
										</c:if>
										<div style="text-align: right;">
											${alarm.extime}
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<!-- 헤더부분 -->
		<div id="header-wrap">
			<div class="header">
				<div class="logobox">
					<div style="box-sizing: border-box; font-size: 30px; text-align: center;">
						<!-- 로고 이미지 혹은 링크 들어갈 자리 class="div_logo" -->
						<a href="/BookNet/main/main.cls" style="color: #120E0A;"><b>PageTurner</b></a>
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
									<input type="search" id="findBook" placeholder="도서검색" style="float: left; width: 190px; height: 40px; line-height: 40px;"/>
									<input type="button" id="book-search" value="검색" style="float: left; width: 40px; height: 40px; line-height: 40px; margin-left: 10px;"/>
									<!-- 감정 셀렉트 -->
									<div class="w-e-sel">
										<select name="emotion" id="selEmo">
											<option value="">감정을 선택해주세요X)</option>
											<option value="2">덜덜;무서워욧!</option>
											<option value="3">ㅠ_ㅠ불안해요..</option>
											<option value="4">very exciting!</option>
											<option value="1">행복해요X)</option>
											<option value="5">그리워요;ㅁ;</option>
										</select>
									</div>
	 							</div>
	 							<div class="wrt-div">
									<div class="wrt-b-img">
										<img id="sel-wrt-b-img"/>
									</div>
		 							<div class="wrt-body">
		 								<p style="height: 80px; line-height: 80px; margin-bottom: 30px; font-size: 25px;" id="sel-wrt-b-ttl"></p>
	 									<textarea class="-a-t" id="postBody"></textarea>
	 								</div>
	 							</div>
	 							<div class="wrt-last">
	 								<input type="text" placeholder="hashTags" class="hash-input" id="hash-input"/>
	 								<input type="button" value="글 등록" class="p-submit" id="p-submit"/>
	 							</div>
							</div>
							<!-- 도서검색 결과 모달창 -->
 							<div class="w3-modal" id="-s-b-modal">
 								<div id="" class="s-modal-content">
 									<span class="close w-x-btn" style="position: fixed;" id="s-close_butt">x</span>
 									<div class="-s-rst" id="rst-cont">
 										<b>검색 결과</b>
 									</div>
 									<div class="rstPage">
 										<!-- 검색결과 리스트 -->
	 								</div>
 								</div>
 							</div>
						</div>
					</div> 
					<div class="span_icons"> 
						<button type="button" class="butt" id="myBtn">
							<img class="iconimg" id="" src="/BookNet/img/iconmonstr-user-19-240.png">
						</button>
					</div>
				</div>
			</div>
		</div>
     		<!-- 풋터부분 -->
		<footer id="footer-wrap" style="padding:10px; height: 86.45px; color: #FFF;">		
					<h3 style="position:absolute; top:40px; left: 260px; display: flex;">Company</h3><br><h4 style="position:absolute;  top:35px; left: 360px; display: flex; font-size: 10pt;">Increpas</h4><br><h4 style="position:absolute; top:55px; left: 360px; display: flex; font-size:10pt;">서울특별시 관악구 신림동 시흥대로 552</h4>
					<h3 style="position:absolute; top:40px; left: 760px; display: flex;">Project_Team</h3><br><h4 style="position:absolute; top:35px; left: 890px; display: flex; font-size: 10pt;">BookNet KOR</h4><br><h4 style="position:absolute; top:55px; left: 890px; display: flex; font-size:10pt;">PageTurner</h4>
					<h3 style="position:absolute; top:40px; left: 1135px; display: flex;">만든이</h3><br><h4 style="position:absolute; top:35px; left: 1202px; display: flex; font-size: 10pt;">박 기윤 | 김 이슬 | 이 명환</h4><br><h4 style="position:absolute; top:55px; left: 1202px; display: flex; font-size:10pt;">서 동혁 | 우 현우 |</h4>
			    <small>
			    <p style="position:absolute; top:120px; left: 800px; display: flex;">Copyright © 2020 BookNet.co.,Ltd. All rights reserved.</p>
			    <a href="#"  style="position:absolute; top:139px; left: 1037px; display: flex;"><address style="font-size:12px; color:#fff;">@인플루언서 신청 ., @ Apply for Influencer</address></a>
			    <address style="position:absolute; top:140px; left: 800px; display: flex;">Contact increpas for more information. </address>
			    </small>
			    <img src="https://img.icons8.com/dusk/64/000000/finn.png" style="position:absolute; top:100px; left: 1497px; display: flex; width:64px; height: 64px;"/>
			    <img src="https://img.icons8.com/dusk/64/000000/jake.png" style="position:absolute; top:100px; left: 1582px; display: flex; width:64px; height: 64px;"/>
			    <img src="https://img.icons8.com/dusk/64/000000/stich.png" style="position:absolute; top:100px; left: 1667px; display: flex; width:64px; height: 64px;"/>
			    <img src="https://img.icons8.com/dusk/64/000000/homer-simpson.png" style="position:absolute; top:100px; left: 1752px; display: flex; width:64px; height: 64px;"/>
			    <img src="https://img.icons8.com/dusk/64/000000/futurama-zoidberg.png" style="position:absolute; top:100px; left: 1830px; display: flex; width:64px; height: 64px;"/>
			    <div style="/*border:2px solid #fff;*/ width: 400px; height:80px; line-height:65px; color:#fff;font-size:60px; text-align:center; position:absolute; top:10px; left: 1490px;" id="clock">
				</div>  
		</footer>
	</div>
</body>
</html>
