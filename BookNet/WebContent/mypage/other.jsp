<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html style="background-color:#F3F0F7">
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="/BookNet/css/proj_fixed.css">
<link rel="stylesheet" href="/BookNet/css/modal.css">
<link rel="stylesheet" href="/BookNet/css/w3.css">
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

<div class="content">
<div data-aid="stylesContainer">
		<style type="text/css" data-styleid="pc1">
.pc1[data-state~="fixedPosition"] {
	position: fixed !important;
	left: auto !important;
	z-index: 50;
}

.pc1[data-state~="fixedPosition"].pc1_footer {
	top: auto;
	bottom: 0;
}

.pc1bg {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}

.pc1[data-is-absolute-layout="true"]>.pc1centeredContent {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}

.pc1[data-is-absolute-layout="true"]>.pc1centeredContent>.pc1inlineContent
	{
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}
</style>
		<style type="text/css" data-styleid="style-kahxfitn">
.style-kahxfitnbg {
	border: 0px solid rgba(0, 0, 0, 1);
	background-color: rgba(255, 255, 255, 1);
	border-radius: 0;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}

.style-kahxfitn[data-is-absolute-layout="true"]>.style-kahxfitninlineContent
	{
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}
</style>
		<style type="text/css" data-styleid="txtNew">
.txtNew {
	word-wrap: break-word;
	text-align: start;
}

.txtNew_override-left * {
	text-align: left !important;
}

.txtNew_override-right * {
	text-align: right !important;
}

.txtNew_override-center * {
	text-align: center !important;
}

.txtNew_override-justify * {
	text-align: justify !important;
}

.txtNew li {
	font-style: inherit;
	font-weight: inherit;
	line-height: inherit;
	letter-spacing: normal;
}

.txtNew ol, .txtNew ul {
	padding-left: 1.3em;
	padding-right: 0;
	margin-left: 0.5em;
	margin-right: 0;
	line-height: normal;
	letter-spacing: normal;
}

.txtNew ul {
	list-style-type: disc;
}

.txtNew ol {
	list-style-type: decimal;
}

.txtNew ul ul, .txtNew ol ul {
	list-style-type: circle;
}

.txtNew ul ul ul, .txtNew ol ul ul {
	list-style-type: square;
}

.txtNew ul ol ul, .txtNew ol ol ul {
	list-style-type: square;
}

.txtNew ul[dir="rtl"], .txtNew ol[dir="rtl"] {
	padding-left: 0;
	padding-right: 1.3em;
	margin-left: 0;
	margin-right: 0.5em;
}

.txtNew ul[dir="rtl"] ul, .txtNew ul[dir="rtl"] ol, .txtNew ol[dir="rtl"] ul,
	.txtNew ol[dir="rtl"] ol {
	padding-left: 0;
	padding-right: 1.3em;
	margin-left: 0;
	margin-right: 0.5em;
}

.txtNew p {
	margin: 0;
	line-height: normal;
	letter-spacing: normal;
}

.txtNew h1 {
	margin: 0;
	line-height: normal;
	letter-spacing: normal;
}

.txtNew h2 {
	margin: 0;
	line-height: normal;
	letter-spacing: normal;
}

.txtNew h3 {
	margin: 0;
	line-height: normal;
	letter-spacing: normal;
}

.txtNew h4 {
	margin: 0;
	line-height: normal;
	letter-spacing: normal;
}

.txtNew h5 {
	margin: 0;
	line-height: normal;
	letter-spacing: normal;
}

.txtNew h6 {
	margin: 0;
	line-height: normal;
	letter-spacing: normal;
}

.txtNew a {
	color: inherit;
}
</style>
		<style type="text/css" data-styleid="style-kahydzlx">
.style-kahydzlxbg {
	border: 1px solid rgba(0, 0, 0, 1);
	background-color: rgba(255, 255, 255, 1);
	border-radius: 0;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}

.style-kahydzlx[data-is-absolute-layout="true"]>.style-kahydzlxinlineContent
	{
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}
</style>
		<style type="text/css" data-styleid="style-kahykq29">
.style-kahykq29bg {
	border: 1px solid rgba(0, 0, 0, 1);
	background-color: rgba(255, 255, 255, 1);
	border-radius: 3px;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}

.style-kahykq29[data-is-absolute-layout="true"]>.style-kahykq29inlineContent
	{
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}
</style>
		<style type="text/css" data-styleid="style-kai5ngt3">
.style-kai5ngt3bg {
	border: 0px solid rgba(0, 0, 0, 1);
	background-color: rgba(255, 255, 255, 1);
	border-radius: 0;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}

.style-kai5ngt3[data-is-absolute-layout="true"]>.style-kai5ngt3inlineContent
	{
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}
</style>
		<style type="text/css" data-styleid="c1">
.c1bg {
	border: 0px solid rgba(0, 0, 0, 1);
	background-color: rgba(255, 255, 255, 1);
	border-radius: 0;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}

.c1[data-is-absolute-layout="true"]>.c1inlineContent {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}
</style>
		<style type="text/css" data-styleid="style-kai3srj7">
.style-kai3srj7bg {
	border: 1px solid rgba(0, 0, 0, 1);
	background-color: rgba(255, 255, 255, 1);
	border-radius: 0;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}

.style-kai3srj7[data-is-absolute-layout="true"]>.style-kai3srj7inlineContent
	{
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}
</style>
		<style type="text/css" data-styleid="style-kai3vrh4">
.style-kai3vrh4bg {
	border: 1px solid rgba(0, 0, 0, 1);
	background-color: rgba(255, 255, 255, 1);
	border-radius: 0;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}

.style-kai3vrh4[data-is-absolute-layout="true"]>.style-kai3vrh4inlineContent
	{
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}
</style>
	</div>
	<div class="noop visual-focus-on" style="position: relative">
		<div id="SITE_ROOT" class="SITE_ROOT"
			style="width: 100%; min-width: 900px; padding-bottom: 0; top: 50px"
			aria-hidden="false">
			<div id="masterPage" class="mesh-layout" data-mesh-layout="grid">
				<div style="position: relative" id="PAGES_CONTAINERcenteredContent"
					class="pc1centeredContent">

					<div style="position: relative" id="PAGES_CONTAINERinlineContent"
						class="pc1inlineContent">
						<div style="width: 100%">
							<div id="c1dmpinlineContent-gridWrapper"
								data-mesh-internal="true">

								<div data-is-absolute-layout="false"
									style="top:; bottom:; left:; right:; position:"
									class="style-kahxfitn" id="comp-kahxf92g">

									<div class="style-kahxfitninlineContent"
										id="comp-kahxf92ginlineContent">
										<style id="comp-kahxf92g-mesh-styles">
#comp-kahxf92ginlineContent {
	height: auto;
	width: 900px;
	position: relative;
}

#comp-kahxf92ginlineContent-gridContainer {
	position: static;
	display: grid;
	height: auto;
	width: 100%;
	min-height: auto;
	grid-template-rows: min-content min-content min-content min-content
		min-content min-content min-content min-content 1fr;
	grid-template-columns: 100%;
}

#comp-kahxjzbw {
	position: relative;
	margin: 25px 0px 18px 0;
	left: 358px;
	grid-area: 1/1/2/2;
	justify-self: start;
	align-self: start;
}

#comp-kahy8rpj {
	position: relative;
	margin: 0px 0px -99px 0;
	left: 27px;
	grid-area: 3/1/6/2;
	justify-self: start;
	align-self: start;
}

#comp-kahzqprw {
	position: relative;
	margin: 0px 0px -36px 0;
	left: 27px;
	grid-area: 7/1/8/2;
	justify-self: start;
	align-self: start;
}

#comp-kahykq0w {
	position: relative;
	margin: 0px 0px 22px 0;
	left: 330px;
	grid-area: 2/1/4/2;
	justify-self: start;
	align-self: start;
}

#comp-kahztsue {
	position: relative;
	margin: 0px 0px 3px 0;
	left: 330px;
	grid-area: 4/1/5/2;
	justify-self: start;
	align-self: start;
}

#comp-kahyq160 {
	position: relative;
	margin: 0px 0px -82px 0;
	left: 330px;
	grid-area: 6/1/7/2;
	justify-self: start;
	align-self: start;
}

#comp-kai65t3p {
	position: relative;
	margin: 0px 0px 3px 0;
	left: 330px;
	grid-area: 8/1/9/2;
	justify-self: start;
	align-self: start;
}

#comp-kai65t47 {
	position: relative;
	margin: 0px 0px 36px 0;
	left: 330px;
	grid-area: 9/1/10/2;
	justify-self: start;
	align-self: start;
}

#comp-kahzhh7n {
	position: relative;
	margin: 0px 0px 14px 0;
	left: 27px;
	grid-area: 2/1/3/2;
	justify-self: start;
	align-self: start;
}

#comp-kahxf92gcenteredContent {
	position: relative;
}
</style>
										<div id="comp-kahxf92ginlineContent-gridWrapper"
											data-mesh-internal="true">
											<div id="comp-kahxf92ginlineContent-gridContainer"
												data-mesh-internal="true">
												<div data-packed="true" style="width: 320px;" class="txtNew"
													id="comp-kahxjzbw">
													<h1 class="font_0" style="font-size: 75px;">
														<span>My Page</span>
													</h1>
												</div>
												<div data-is-absolute-layout="false"
													style="top:; bottom:; left:; right:; position:"
													class="style-kahydzlx" id="comp-kahy8rpj">
													<div id="comp-kahy8rpjbg" class="style-kahydzlxbg"></div>
													<div class="style-kahydzlxinlineContent"
														id="comp-kahy8rpjinlineContent">
														<style id="comp-kahy8rpj-mesh-styles">
#comp-kahy8rpjinlineContent {
	height: auto;
	width: 276px;
	position: relative;
}

#comp-kahy8rpjinlineContent-gridContainer {
	position: static;
	height: auto;
	width: 100%;
	min-height: 368px;
}

#comp-kahy8rpjcenteredContent {
	position: relative;
}
</style>
														<div id="comp-kahy8rpjinlineContent-gridContainer" style="height: 380px;" data-mesh-internal="true">
															<img src="${INFO.save_loc}" />
														</div>
													</div>
												</div>
												<div data-is-absolute-layout="false"
													style="top:; bottom:; left:; right:; position:" class="c1"
													id="comp-kahzqprw">
													<div id="comp-kahzqprwbg" class="c1bg"></div>
													<div class="c1inlineContent"
														id="comp-kahzqprwinlineContent">
														<style id="comp-kahzqprw-mesh-styles">
#comp-kahzqprwinlineContent {
	height: auto;
	width: 276px;
	position: relative;
}

#comp-kahzqprwinlineContent-gridContainer {
	position: static;
	display: grid;
	height: auto;
	width: 100%;
	min-height: auto;
	grid-template-rows: min-content min-content 1fr;
	grid-template-columns: 100%;
}

#comp-kahzrcco {
	position: relative;
	margin: 16px 0px 18px 0;
	left: 13px;
	grid-area: 1/1/2/2;
	justify-self: start;
	align-self: start;
}

#comp-kahzrwoa {
	position: relative;
	margin: 0px 0px 19px 0;
	left: 13px;
	grid-area: 2/1/3/2;
	justify-self: start;
	align-self: start;
}

#comp-kahzsngs {
	position: relative;
	margin: 0px 0px 16px 0;
	left: 13px;
	grid-area: 3/1/4/2;
	justify-self: start;
	align-self: start;
}

#comp-kahzqprwcenteredContent {
	position: relative;
}
</style>
														<div id="comp-kahzqprwinlineContent-gridWrapper"
															data-mesh-internal="true">
															<div id="comp-kahzqprwinlineContent-gridContainer"
																data-mesh-internal="true">
																<div data-packed="true" style="width: 250px;"
																	class="txtNew" id="comp-kahzrcco">
																	<h2 style="text-align: center;">게시글 <a href="">${CNTPOST}</a></h2>
																</div>
																<div data-packed="true" style="width: 250px;"
																	class="txtNew" id="comp-kahzrwoa">
																	<h2 style="text-align: center;"><a href="">팔로우 ${CNTFALLOW}</a></h2>
																</div>
																<div data-packed="true" style="width: 250px;"
																	class="txtNew" id="comp-kahzsngs">
																	<h2 style="text-align: center;"><a href="">팔로워 ${CNTFALLOWER}</a></h2>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div data-is-absolute-layout="false"
													style="top:; bottom:; left:; right:; position:"
													class="style-kahykq29" id="comp-kahykq0w">
													<div id="comp-kahykq0wbg" class="style-kahykq29bg"></div>
													<div class="style-kahykq29inlineContent"
														id="comp-kahykq0winlineContent">
														<style id="comp-kahykq0w-mesh-styles">
#comp-kahykq0winlineContent {
	height: auto;
	width: 623px;
	position: relative;
}

#comp-kahykq0winlineContent-gridContainer {
	position: static;
	display: grid;
	height: auto;
	width: 100%;
	min-height: 258px;
	grid-template-rows: 1fr;
	grid-template-columns: 100%;
}

#comp-kahz353j {
	position: relative;
	margin: 6px 0px 10px 0;
	left: 27px;
	grid-area: 1/1/2/2;
	justify-self: start;
	align-self: start;
}

#comp-kahykq0wcenteredContent {
	position: relative;
}
</style>
														<div id="comp-kahykq0winlineContent-gridWrapper"
															data-mesh-internal="true">
															<div id="comp-kahykq0winlineContent-gridContainer"
																data-mesh-internal="true">
																<div data-is-absolute-layout="false"
																	style="top:; bottom:; left:; right:; position:"
																	class="style-kai5ngt3" id="comp-kahz353j">
																	<div id="comp-kahz353jbg" class="style-kai5ngt3bg"></div>
																	<div class="style-kai5ngt3inlineContent"
																		id="comp-kahz353jinlineContent">
																		<style id="comp-kahz353j-mesh-styles">
#comp-kahz353jinlineContent {
	height: auto;
	width: 568px;
	position: relative;
}

#comp-kahz353jinlineContent-gridContainer {
	position: static;
	display: grid;
	height: auto;
	width: 100%;
	min-height: auto;
	grid-template-rows: min-content 1fr;
	grid-template-columns: 100%;
}

#comp-kahzlc3l {
	position: relative;
	margin: 0px 0px 2px 0;
	left: 0px;
	grid-area: 1/1/2/2;
	justify-self: start;
	align-self: start;
}

#comp-kahzedrx {
	position: relative;
	margin: 0px 0px 1px 0;
	left: 0px;
	grid-area: 2/1/3/2;
	justify-self: start;
	align-self: start;
}

#comp-kahz353jcenteredContent {
	position: relative;
}
</style>
																			<div id="comp-kahz353jinlineContent-gridContainer" data-mesh-internal="true">
																				<div data-packed="true" style="width: 105px;" class="txtNew" id="comp-kahzlc3l">
																					<h4>Nickname</h4>
																				</div>
																				<div data-packed="true" style="width: 250px;" class="txtNew" id="comp-kahzedrx">
																					<h2>${INFO.nickname}</h2>
																				</div>
																			</div>
																			<div id="comp-kahz353jinlineContent-gridContainer" data-mesh-internal="true">
																				<div data-packed="true" style="width: 105px;" class="txtNew" id="comp-kahzlc3l">
																					<h4>공개한 개인정보</h4>
																				</div>
																				<div data-packed="true" style="width: 250px;" class="txtNew" id="comp-kahzedrx">
																					<h2>공개한 개인정보</h2>
																				</div>
																				<button style="width: 200px; height: 30px; font-size: 13px; line-height: 30px;" id="changeInfo">정보수정하기</button>
																			</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div data-packed="true" style="width: 276px;" class="txtNew"
													id="comp-kahztsue">
													<h3 class="font_4">좋아요 목록</h3>
												</div>
												<div data-is-absolute-layout="false"
													style="top:; bottom:; left:; right:; position:"
													class="style-kahykq29" id="comp-kahyq160">
													<div id="comp-kahyq160bg" class="style-kahykq29bg"></div>
													<div class="style-kahykq29inlineContent"
														id="comp-kahyq160inlineContent">
														<style id="comp-kahyq160-mesh-styles">
#comp-kahyq160inlineContent {
	height: auto;
	width: 623px;
	position: relative;
}

#comp-kahyq160inlineContent-gridContainer {
	position: static;
	display: grid;
	height: auto;
	width: 100%;
	min-height: 203px;
	grid-template-rows: 1fr;
	grid-template-columns: 100%;
}

#comp-kai3qfqd {
	position: relative;
	margin: 18px 0px 10px 0;
	left: 26px;
	grid-area: 1/1/2/2;
	justify-self: start;
	align-self: start;
}

#comp-kahyq160centeredContent {
	position: relative;
}
</style>
														<div id="comp-kahyq160inlineContent-gridWrapper"
															data-mesh-internal="true">
															<div id="comp-kahyq160inlineContent-gridContainer"
																data-mesh-internal="true">
																<div data-is-absolute-layout="false"
																	style="top:; bottom:; left:; right:; position:"
																	class="style-kai3srj7" id="comp-kai3qfqd">
																	<c:forEach var="like" items="${LIKE}">
																		<div class="style-kai3srj7inlineContent" id="comp-kai3qfqdinlineContent">
																			<style id="comp-kai3qfqd-mesh-styles">
	#comp-kai3qfqdinlineContent {
		height: 95px;
		width: 568px;
		position: relative;
	}
	
	#comp-kai3uids {
		position: relative;
		margin: 7px 0px -37px 0;
		left: 6px;
		grid-area: 1/1/2/2;
		justify-self: start;
		align-self: start;
	}
	
	#comp-kai3za90 {
		position: relative;
		margin: 8px 0px 17px 0;
		left: 75px;
		grid-area: 1/1/2/2;
		justify-self: start;
		align-self: start;
	}
	
	#comp-kai41mkt {
		position: relative;
		margin: 0px 0px 6px 0;
		left: 75px;
		grid-area: 2/1/3/2;
		justify-self: start;
		align-self: start;
	}
	
	#comp-kai63k32 {
		position: relative;
		margin: 7px 0px 17px 0;
		left: 531px;
		grid-area: 1/1/2/2;
		justify-self: start;
		align-self: start;
	}
	
	#comp-kai64s7p {
		position: relative;
		margin: 7px 0px 17px 0;
		left: 500px;
		grid-area: 1/1/2/2;
		justify-self: start;
		align-self: start;
	}
	
	#comp-kai3qfqdcenteredContent {
		position: relative;
	}
	</style>
																					<div data-is-absolute-layout="false" style="top:; bottom:; left:; right:; position:" class="style-kai3vrh4" id="comp-kai3uids">
																						<!-- <div id="comp-kai3uidsbg" class="style-kai3vrh4bg">
																						</div> -->
																						<div class="style-kai3vrh4inlineContent"
																							id="comp-kai3uidsinlineContent">
																							<style id="comp-kai3uids-mesh-styles">
	#comp-kai3uidsinlineContent {
		height: auto;
		width: 60px;
		position: relative;
	}
	
	#comp-kai3uidsinlineContent-gridContainer {
		position: static;
		height: auto;
		width: 100%;
		min-height: 80px;
	}
	
	#comp-kai3uidscenteredContent {
		position: relative;
	}
	</style>
																							<div id="comp-kai3uidsinlineContent-gridContainer" data-mesh-internal="true">
																								<img src="${like.largeimg}" />
																							</div>
																						</div>
																					</div>
																					<div data-packed="true" style="width: 220px;"
																						class="txtNew" id="comp-kai3za90">
																						<h2 class="font_2" style="font-size: 21px;">
																							<span><span style="font-size: 21px;"><span
																									style="color: #292929;">${like.bname}</span></span></span>
																						</h2>
																					</div>
																					<div data-packed="true" style="width: 481px;"
																						class="txtNew" id="comp-kai41mkt">
																						<p class="font_7">
																							<span>${like.postcont}</span>
																						</p>
																					</div>
																					<div data-is-absolute-layout="false"
																						style="top:; bottom:; left:; right:; position:"
																						class="style-kai3srj7" id="comp-kai63k32">
																						<div id="comp-kai63k32bg" class="style-kai3srj7bg"></div>
																						<div class="style-kai3srj7inlineContent"
																							id="comp-kai63k32inlineContent">
																							<style id="comp-kai63k32-mesh-styles">
	#comp-kai63k32inlineContent {
		height: 25px;
		width: 25px;
		position: relative;
	}
	
	#comp-kai63k32inlineContent-gridContainer {
		position: static;
		height: auto;
		width: 100%;
		min-height: 25px;
	}
	
	#comp-kai63k32centeredContent {
		position: relative;
	}
	</style>
																							<span style="display: inline-block;"
																								id="comp-kai63k32inlineContent-gridContainer"
																								data-mesh-internal="true"></span>
																						</div>
																					</div>
																					<div data-is-absolute-layout="false"
																						style="top:; bottom:; left:; right:; position:"
																						class="style-kai3vrh4" id="comp-kai64s7p">
																						<div id="comp-kai64s7pbg" class="style-kai3vrh4bg"></div>
																						<div class="style-kai3vrh4inlineContent"
																							id="comp-kai64s7pinlineContent">
																							<style id="comp-kai64s7p-mesh-styles">
	#comp-kai64s7pinlineContent {
		height: 25px;
		width: 25px;
		position: relative;
	}
	
	#comp-kai64s7pinlineContent-gridContainer {
		position: static;
		height: auto;
		width: 100%;
		min-height: 25px;
	}
	
	#comp-kai64s7pcenteredContent {
		position: relative;
	}
	</style>
																							<span style="display: inline-block;"
																								id="comp-kai64s7pinlineContent-gridContainer"
																								data-mesh-internal="true"></span>
																						</div>
																					</div>
																		</div>
																	</c:forEach>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div data-packed="true" style="width: 276px;" class="txtNew"
													id="comp-kai65t3p">
													<h3 class="font_4">게시글 또는 알림</h3>
												</div>
												<div data-is-absolute-layout="false"
													style="top:; bottom:; left:; right:; position:"
													class="style-kahykq29" id="comp-kai65t47">
													<div id="comp-kai65t47bg" class="style-kahykq29bg"></div>
													<div class="style-kahykq29inlineContent"
														id="comp-kai65t47inlineContent">
														<style id="comp-kai65t47-mesh-styles">
#comp-kai65t47inlineContent {
	height: auto;
	width: 623px;
	position: relative;
}

#comp-kai65t47inlineContent-gridContainer {
	position: static;
	display: grid;
	height: auto;
	width: 100%;
	min-height: 203px;
	grid-template-rows: 1fr;
	grid-template-columns: 100%;
}

#comp-kai65t6x {
	position: relative;
	margin: 18px 0px 10px 0;
	left: 26px;
	grid-area: 1/1/2/2;
	justify-self: start;
	align-self: start;
}

#comp-kai65t47centeredContent {
	position: relative;
}
</style>
														<div id="comp-kai65t47inlineContent-gridWrapper"
															data-mesh-internal="true">
															<div id="comp-kai65t47inlineContent-gridContainer"
																data-mesh-internal="true">
																<div data-is-absolute-layout="false"
																	style="top:; bottom:; left:; right:; position:"
																	class="style-kai3vrh4" id="comp-kai65t6x">
																	<div id="comp-kai65t6xbg" class="style-kai3vrh4bg"></div>
																	<div class="style-kai3vrh4inlineContent"
																		id="comp-kai65t6xinlineContent">
																		<style id="comp-kai65t6x-mesh-styles">
#comp-kai65t6xinlineContent {
	height: 95px;
	width: 568px;
	position: relative;
}

#comp-kai65t6xinlineContent-gridContainer {
	position: static;
	display: grid;
	height: auto;
	width: 100%;
	min-height: auto;
	grid-template-rows: min-content 1fr;
	grid-template-columns: 100%;
}

#comp-kai65t6y {
	position: relative;
	margin: 7px 0px -37px 0;
	left: 6px;
	grid-area: 1/1/2/2;
	justify-self: start;
	align-self: start;
}

#comp-kai65t6z {
	position: relative;
	margin: 8px 0px 17px 0;
	left: 75px;
	grid-area: 1/1/2/2;
	justify-self: start;
	align-self: start;
}

#comp-kai65t701 {
	position: relative;
	margin: 0px 0px 6px 0;
	left: 75px;
	grid-area: 2/1/3/2;
	justify-self: start;
	align-self: start;
}

#comp-kai65t711 {
	position: relative;
	margin: 7px 0px 17px 0;
	left: 531px;
	grid-area: 1/1/2/2;
	justify-self: start;
	align-self: start;
}

#comp-kai65t72 {
	position: relative;
	margin: 7px 0px 17px 0;
	left: 500px;
	grid-area: 1/1/2/2;
	justify-self: start;
	align-self: start;
}

#comp-kai65t6xcenteredContent {
	position: relative;
}
</style>
																		<div id="comp-kai65t6xinlineContent-gridWrapper"
																			data-mesh-internal="true">
																			<div id="comp-kai65t6xinlineContent-gridContainer"
																				data-mesh-internal="true">
																				<div data-is-absolute-layout="false"
																					style="top:; bottom:; left:; right:; position:"
																					class="style-kai3vrh4" id="comp-kai65t6y">
																					<div id="comp-kai65t6ybg" class="style-kai3vrh4bg"></div>
																					<div class="style-kai3vrh4inlineContent"
																						id="comp-kai65t6yinlineContent">
																						<style id="comp-kai65t6y-mesh-styles">
#comp-kai65t6yinlineContent {
	height: auto;
	width: 60px;
	position: relative;
}

#comp-kai65t6yinlineContent-gridContainer {
	position: static;
	height: auto;
	width: 100%;
	min-height: 80px;
}

#comp-kai65t6ycenteredContent {
	position: relative;
}
</style>
																						<div id="comp-kai65t6yinlineContent-gridContainer"
																							data-mesh-internal="true"></div>
																					</div>
																				</div>
																				<div data-packed="true" style="width: 220px;"
																					class="txtNew" id="comp-kai65t6z">
																					<h2 class="font_2" style="font-size: 21px;">
																						<span><span style="font-size: 21px;"><span>제목</span></span></span>
																					</h2>
																				</div>
																				<div data-packed="true" style="width: 481px;"
																					class="txtNew" id="comp-kai65t701">
																					<p class="font_7">
																						<span>내용</span>
																					</p>
																				</div>
																				<div data-is-absolute-layout="false"
																					style="top:; bottom:; left:; right:; position:"
																					class="style-kai3vrh4" id="comp-kai65t711">
																					<div id="comp-kai65t711bg" class="style-kai3vrh4bg"></div>
																					<div class="style-kai3vrh4inlineContent"
																						id="comp-kai65t711inlineContent">
																						<style id="comp-kai65t711-mesh-styles">
#comp-kai65t711inlineContent {
	height: 25px;
	width: 25px;
	position: relative;
}

#comp-kai65t711inlineContent-gridContainer {
	position: static;
	height: auto;
	width: 100%;
	min-height: 25px;
}

#comp-kai65t711centeredContent {
	position: relative;
}
</style>
																						<span style="display: inline-block;"
																							id="comp-kai65t711inlineContent-gridContainer"
																							data-mesh-internal="true"></span>
																					</div>
																				</div>
																				<div data-is-absolute-layout="false"
																					style="top:; bottom:; left:; right:; position:"
																					class="style-kai3vrh4" id="comp-kai65t72">
																					<div id="comp-kai65t72bg" class="style-kai3vrh4bg"></div>
																					<div class="style-kai3vrh4inlineContent"
																						id="comp-kai65t72inlineContent">
																						<style id="comp-kai65t72-mesh-styles">
#comp-kai65t72inlineContent {
	height: 25px;
	width: 25px;
	position: relative;
}

#comp-kai65t72inlineContent-gridContainer {
	position: static;
	height: auto;
	width: 100%;
	min-height: 25px;
}

#comp-kai65t72centeredContent {
	position: relative;
}
</style>
																						<span style="display: inline-block;"
																							id="comp-kai65t72inlineContent-gridContainer"
																							data-mesh-internal="true"></span>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div data-packed="true" style="width: 276px;" class="txtNew"
													id="comp-kahzhh7n">
													<h1 class="font_4" style="text-align: center;">
														<span>${INFO.id}</span>
													</h1>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>
</body>
</html>
</html>