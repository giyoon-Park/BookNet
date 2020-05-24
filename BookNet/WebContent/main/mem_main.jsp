<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html style="background-color: #F3F0F7">
<head>
<meta charset="UTF-8">
<title>회원 메인페이지</title>
<link rel="stylesheet" href="/BookNet/css/proj_fixed.css">
<link rel="stylesheet" href="/BookNet/css/modal.css">
<link rel="stylesheet" href="/BookNet/css/w3.css">
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" /> -->
<script type="text/javascript" src="/BookNet/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="/BookNet/js/fixed.js"></script>
<style>
</style>	
<script type="text/javascript">
	$(document).ready(function() {
		  	// footerUp
			var hei = $('#footer-wrap').css("height");
			$("#footer-wrap").mouseenter(function(){
				if($('#footer-wrap').css("height") == "100px"){
					$('#footer-wrap').css("transition","all 0.6s");
					$('#footer-wrap').css("background-color","#F7B3D2");
					$('#footer-wrap').css("color","#FFF");
					$('#footer-wrap').css("height","200px");
					
				} else if($('#footer-wrap').css("height") == hei){
					$('#footer-wrap').css("transition","all 0.6s");
					$('#footer-wrap').css("background-color","#F7B3D2");
					$('#footer-wrap').css("color","#FFF");
					$('#footer-wrap').css("height","200px");
				}
		 	$("#footer-wrap").mouseleave(function(){
		 		if($('#footer-wrap').css("height") == "200px"){
		 			$('#footer-wrap').css("height", "100px");
					$('#footer-wrap').css("background-color","#F3F0F7");
					$('#footer-wrap').css("color","#FFF");
					$('#footer-wrap').css("transition","all 0.6s");
					$('#footer-wrap').css("overflow","hidden");
		 			}
				});
			});
	});
</script>
<script>
// 시계만들기
function printClock() {
  var clock = document.getElementById("clock");            // 출력할 장소 선택
  var currentDate = new Date();                                     // 현재시간
  var calendar = currentDate.getFullYear() + "-" + (currentDate.getMonth()+1) + "-" + currentDate.getDate() // 현재 날짜
  var amPm = 'AM'; // 초기값 AM
  var currentHours = addZeros(currentDate.getHours(),2); 
  var currentMinute = addZeros(currentDate.getMinutes() ,2);
  var currentSeconds =  addZeros(currentDate.getSeconds(),2);
			  
	  if(currentHours >= 12){ // 시간이 12보다 클 때 PM으로 세팅, 12를 빼줌
	  	amPm = 'PM';
	  	currentHours = addZeros(currentHours - 12,2);
	  }
			
	  if(currentSeconds >= 50){// 50초 이상일 때 색을 변환해 준다.
	     currentSeconds = '<span style="color:#de1951;">'+currentSeconds+'</span>'
	  }
	  clock.innerHTML = currentHours+":"+currentMinute+":"+currentSeconds +" <span style='font-size:50px;'>"+ amPm+"</span>"; //날짜를 출력해 줌
			  
	  setTimeout("printClock()",1000);         // 1초마다 printClock() 함수 호출
	}
			
function addZeros(num, digit) { // 자릿수 맞춰주기
	  var zero = ''; 
	  num = num.toString();
	  if (num.length < digit) {
	    for (i = 0; i < digit - num.length; i++) {
	      zero += '0';
	    }
	  }
	  return zero + num;
}
</script>
</head>
<body onload="printClock()"/>
<!-- 파라미터로 넘길 데이터값 -->
<form method="POST" id="frm">
	<input type="hidden" id="bno" name="bno"> <!-- 글 작성할때 넘겨줄 책 번호 -->
</form>
	<div>
		<!-- 본문부분 -->
		<div id="contents-wrap">
			<div class="contents">
				<!-- 좌측 게시글 부분 -->
				<div class="posts_area">
					<c:forEach var="data" items="${LIST}">
						<article class="eachPost" id="${data.pno}">
							<!-- 작성자 정보 & 버튼 :: 아이디 불러와야함  -->
							<div class="wrtInfo">
								<div class="wrtProf">
									<img src="">
								</div>
								<div class="wrter" id="">
									<a href=""><b>${data.id}</b></a>
								</div>
								<div class="time" id="">
									${data.pdate}
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
									<img src="${data.largeimg}" style="width: 90%; height: auto;" />
								</div>
								<div class="genre-name" style="font-size: 12px; text-align: left;">
									<!-- 도서장르 들어갈 부분 -->
									${data.gname}
								</div>
								<div class="book-name">
									<!-- 도서명 들어갈 부분 -->
									<b>${data.bname}</b>
								</div>
								<div class="post-body">
									<!-- 게시글 부분 -->
									<a style="box-sizing: border-box; font-size: 18px;">${data.postcont}</a>
								</div>
							</div>
							<div class="etcdiv" style="text-align: left; font-size: 13px;">
								<!-- 게시글 해시태그 부분 -->
								${data.hash}
							</div>
						</article>
					</c:forEach>
				</div>
				<!-- 우측 정보 부분 : 고정페이지로 들어갈 것-->
				<div class="info_area">
					<div style="width: 100%; height: 200px; margin-top: 15px; border: solid 1px white;">
						<a></a>
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
					<div style="box-sizing: border-box; font-size: 30px; text-align: center;">
						<!-- 로고 이미지 혹은 링크 들어갈 자리 class="div_logo" -->
						<a href="/BookNet/main/mem_main.cls" style="color: #120E0A;"><b>PageTurner</b></a>
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
										<select name="emotion">
											<option value="">감정을 선택해주세요X)</option>
											<option value="fear">덜덜;무서워욧!</option>
											<option value="anxiety">ㅠ_ㅠ불안해요..</option>
											<option value="excited">very exciting!</option>
											<option value="joy">행복해요X)</option>
											<option value="nostalgia">그리워요;ㅁ;</option>
										</select>
									</div>
	 							</div>
	 							<div class="wrt-div">
									<div class="wrt-b-img">
										<img id="sel-wrt-b-img"/>
									</div>
		 							<div class="wrt-body">
		 								<p style="height: 80px; line-height: 80px; margin-bottom: 30px; font-size: 25px;" id="sel-wrt-b-ttl"></p>
	 									<textarea class="-a-t"></textarea>
	 								</div>
	 							</div>
	 							<div class="wrt-last">
	 								<input type="text" placeholder="hashTags" class="hash-input" id=""/>
	 								<input type="button" value="글 등록" class="p-submit" id="p-submit"/>
	 							</div>
							</div>
							<!-- 도서검색 결과 모달창 -->
 							<div class="w3-modal" id="-s-b-modal">
 								<div id="" class="s-modal-content">
 									<span class="close w-x-btn" id="s-close_butt">x</span>
 									<div class="-s-rst" id="rst-cont">
 										<b>검색 결과</b>
 									</div>
 									<%-- <c:forEach var="rstBook" items="${}"> --%>
 									<div class="w100perh300 rstbook" id="">
 										<!-- 검색 결과의 수만큼 이 div가 생성되어야한다. -->
  										<div class="-s-b-img">
 											<img id="b-image"/>
 										</div>
 										<div class="-s-b-info">
 											<div style="float: left; margin-right: 15px;">도서장르 : </div> 
 											<div style="float: left;"id="b-genre"></div>
 										</div>
 										<div class="-s-b-info">
 											<div style="float: left; margin-right: 15px;">도서명 : </div> 
 											<div style="float: left;"id="b-title"></div>
 										</div>
 										<div class="-s-b-info">
 											<div style="float: left; margin-right: 15px;">저 자 : </div> 
 											<div style="float: left;"id="b-author"></div>
 										</div>
 										<div class="-s-b-info" id="notrans">
 											<div style="float: left; margin-right: 15px;">옮긴이 : </div> 
 											<div style="float: left;"id="b-author"></div>
 										</div>
	 									<div class="-s-b-submit">
			 								<input type="button" value="책 등록" id="sel-b-submit"/>
	 									</div>
 									</div>
 									<%-- </c:forEach> --%>
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
		<!-- 풋터부분 -->
		<footer id="footer-wrap" style="padding:10px; height: 100px; color: #FFF;">		
					<h3 style="position:absolute; top:0px; left: 350px; display: flex;">Company</h3><br><h4 style="position:absolute;  top:30px; left: 352px; display: flex; font-size: 10pt;">Increpas</h4><br><h4 style="position:absolute; top:50px; left: 352px; display: flex; font-size:10pt;">서울특별시 관악구 신림동 시흥대로 552</h4>
					<h3 style="position:absolute; top:0px; left: 800px; display: flex;">Project_Team</h3><br><h4 style="position:absolute; top:30px; left: 802px; display: flex; font-size: 10pt;">BookNet KOR</h4><br><h4 style="position:absolute; top:50px; left: 802px; display: flex; font-size:10pt;">PageTurner</h4>
					<h3 style="position:absolute; top:0px; left: 1200px; display: flex;">만든이</h3><br><h4 style="position:absolute; top:30px; left: 1202px; display: flex; font-size: 10pt;">박 기윤 | 김 이슬 | 이 명환</h4><br><h4 style="position:absolute; top:50px; left: 1202px; display: flex; font-size:10pt;">서 동혁 | 우 현우 |</h4>
			    <small>
			    <p style="position:absolute; top:120px; left: 800px; display: flex;">Copyright © 2020 BookNet.co.,Ltd. All rights reserved.</p>
			    <address style="position:absolute; top:140px; left: 800px; display: flex;">Contact increpas for more information. </address>
			    </small>
			    <img src="https://img.icons8.com/dusk/64/000000/finn.png" style="position:absolute; top:100px; left: 1497px; display: flex; width:64px; height: 64px;"/>
			    <img src="https://img.icons8.com/dusk/64/000000/jake.png" style="position:absolute; top:100px; left: 1582px; display: flex; width:64px; height: 64px;"/>
			    <img src="https://img.icons8.com/dusk/64/000000/stich.png" style="position:absolute; top:100px; left: 1667px; display: flex; width:64px; height: 64px;"/>
			    <img src="https://img.icons8.com/dusk/64/000000/homer-simpson.png" style="position:absolute; top:100px; left: 1752px; display: flex; width:64px; height: 64px;"/>
			    <img src="https://img.icons8.com/dusk/64/000000/futurama-zoidberg.png" style="position:absolute; top:100px; left: 1830px; display: flex; width:64px; height: 64px;"/>
			    <div style="border:2px solid #fff; width: 400px; height:120px; line-height:65px; color:#fff;font-size:60px; text-align:center; position:absolute; top:50px; left: 1490px;" id="clock">
				</div>
		</footer>
	</div>
</body>
</html>