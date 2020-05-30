<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html style="background-color:#F3F0F7">
<head>
<meta charset="UTF-8">
<title>내 정보수정페이지</title>
<link rel="stylesheet" href="/BookNet/css/proj_fixed.css">
<link rel="stylesheet" href="/BookNet/css/modal.css">
<link rel="stylesheet" href="/BookNet/css/w3.css">
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" /> -->
<script type="text/javascript" src="/BookNet/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="/BookNet/js/fixed.js"></script>
<style>
	
	/*input tag안에 x표 사라지게 한다고 한다..*/
	input[type=text]:-ms-clear{
    display: none;
    }
     
    /* 다른 해상도에서 실험 해봐야함.*/
    #searchclear {
	position: relative;
    left: 135px;
    top: -52px;
    bottom: 0;
    width: 10px;
    /* height: 14px; */
    /* margin: auto; */
    font-size: 12px;
    cursor: pointer;
    color: #ccc;
    background-color: #fff;
	}
}
</style>	
<script type="text/javascript">
	$(document).ready(
		function() {
			// footerUp
			var hei = $('#footer-wrap').css("height"); 
			 $("#footer-wrap").mouseenter(function(){
					if($('#footer-wrap').css("height") == "86.438px"){
						$('#footer-wrap').css("transition","all 0.6s");
						$('#footer-wrap').css("background-color","#F7B3D2");
						$('#footer-wrap').css("color","#FFF");
						$('#footer-wrap').css("height","186.438px");
						
					} else if($('#footer-wrap').css("height") == hei){
						$('#footer-wrap').css("transition","all 0.6s");
						$('#footer-wrap').css("background-color","#F7B3D2");
						$('#footer-wrap').css("color","#FFF");
						$('#footer-wrap').css("height","186.438px");
					}
			 	$("#footer-wrap").mouseleave(function(){
			 		if($('#footer-wrap').css("height") == "186.438px"){
			 			$('#footer-wrap').css("height", "86.438px");
						$('#footer-wrap').css("background-color","#F3F0F7");
						$('#footer-wrap').css("color","#FFF");
						$('#footer-wrap').css("transition","all 0.6s");
						$('#footer-wrap').css("overflow","hidden");
			 		}
				});
			});
			
			// search clear
			var $ipt = $('#searchinput'),
			    $clearIpt = $('#searchclear');
					// keyup시 x표시
				$ipt.keyup(function(){
				  $("#searchclear").toggle(Boolean($(this).val()));
				});
					
					
				$clearIpt.toggle(Boolean($ipt.val()));
				$clearIpt.click(function(){ 
				  $("#searchinput").val('').focus();
				  // display 속성을 none으로 바꾼다. : 감춘다
				  $(this).hide();
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
<form method="POST" action="" id="frm">
	<div>
		<!-- 본문부분 -->
		<div id="contents-wrap">
				<!-- 이곳에 본문내용을 넣어주세요! -->
				<jsp:include page="/member/editMemInfo.jsp" />
		</div>
		<!-- 헤더부분 -->
		<div id="header-wrap">
			<div class="header">
				<div class="logobox">
					<div
						style="box-sizing: border-box; font-size: 30px; text-align: center;">
						<!-- 로고 이미지 혹은 링크 들어갈 자리 class="div_logo" -->
						<a href="/BookNet/main/main.cls">PageTurner</a>
					</div>
				</div>
				<div class="searchbox">
					<input id="searchinput" class="searchinput" type="text" placeholder="search" >
					<span id="searchclear">X</span>
				</div>
				<div class="iconsbox">
					<div style="float: left; width:80px;"> 
						<a href="/BookNet/member/logoutProc.cls">로그아웃</a>
						<!-- <img class="iconimg" id="" src="/BookNet/img/iconmonstr-compass-4-240.png"> -->
					</div> 
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
									<input type="search" id="findBook" placeholder="도서검색"/>
									<input type="button" id="book-search" value="검색" style="width: 40px;"/>
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
 							<!-- 도서검색 결과 모달창 -->
 							<div class="w3-modal" id="-s-b-modal">
 								<div id="" class="s-modal-content">
 									<span class="close w-x-btn" id="s-close_butt">x</span>
 									<div class="-s-rst">
 										<b>검색 결과</b>
 									</div>
 									<%-- <c:forEach var="rstBook" items="${}"> --%>
 									<div style="width: 100%; height: 80px; line-height: 80px; margin: 0 auto; margin-bottom: 20px; border: solid 1px black;">
 										<!-- 검색 결과의 수만큼 이 div가 생성되어야한다. -->
 										<div style="width: 100%; height: 20px; line-height: 20px;" id="b-title"></div>
 									</div>
 									<%-- </c:forEach> --%>
 									<div class="p-submit">
		 								<input type="button" value="책 등록" class="p-submit" id="-s-b-submit"/>
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
</form>
</body>
</html>
</html>