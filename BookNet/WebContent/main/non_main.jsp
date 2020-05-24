<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-color: #F3F0F7">
<head>
<meta charset="UTF-8">
<title>비회원 메인페이지</title>
<link rel="stylesheet" href="/BookNet/css/nonmem.css">
<link rel="stylesheet" href="/BookNet/css/proj_fixed.css">
<script type="text/javascript" src="/BookNet/seo/js/jquery-3.5.0.min.js"></script>
<style>
*{
    overflow-y: none;
   -ms-overflow-style: none; /* IE and Edge */
    scrollbar-width: none; /* Firefox */
}*::-webkit-scrollbar {
display: none; /*Chrome, Safari, Opera*/
}
#logolink{
	text-decoration: none;
	color:black;
	 font-weight: 400;
}#logolink:active{
	color:black;
	 font-weight: 400;
}
</style>
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
<style>
	/* transition css */
	.eachPost{
		overflow: hidden;
	}
	.eachPostTran{
		position: relative;
		right: 205px;
		hegiht: 157.5px;
		width: 205px; 
	}
</style>
<script>
$(function(){
   $('#lbtn').click(function(){
      $(location).attr('href','/clsProj/member/login.cls');
   })
   $('#lbtn2').click(function(){
      $(location).attr('href','/clsProj/member/login.cls');
   })
   $('#jbtn').click(function(){
      $(location).attr('href','/clsProj/member/join.cls');
   })
   $('#jbtn2').click(function(){
      $(location).attr('href','/clsProj/member/join.cls');
   })
   $('.dCJp8').click(function(){
      $('.closeing').remove();
   })
   // 스크롤 함수
  $(document).scroll(function() {
    var maxHeight = $(document).height();
    var currentScroll = $(window).scrollTop() + $(window).height();
    if (maxHeight <= currentScroll + 100) {
       $('.posts_area').append('<article class="eachPost" id="이곳은게시물번호가들어갈자리"><!-- 작성자 정보 & 버튼 :: 아이디 불러와야함  --><div class="wrtInfo"><img src="https://img.icons8.com/nolan/64/apple-seed.png" style=" width: 49px;height: 49px; position: relative ; right: 215px; bottom: 19px;"/><div class="wrtProf"></div><div class="wrter" id=""><b>작성자아이디</b></div><div class="like-butt" id=""><span style="font-size: 12px; line-height: 0px;" class="comt-img"></span></div><div class="like-butt" id="" style="display: flex;"><span style="font-size: 12px; line-height: 0px;" class="like-img" id="likebtn"></span></div></div><!-- 게시글의 본문부분::도서사진,도서이름,본문 --><div class="postCont" style="text-align: center; font-size: 16px;"><!-- 도서사진, 도서이름, 게시글본문 --><div class="book-pic"><!-- 도서 사진 들어갈 부분 --></div><div class="book-name"><!-- 도서명 들어갈 부분 --></div><div class="post-body"><!-- 게시글 부분 --></div></div><div class="etcdiv" style="text-align: center; font-size: 16px;">태그<!-- 게시글 해시태그 부분 --><button class="Bbtn">버튼</button></div></article>');
    }
    
  })
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
})
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
   <div>
      <!-- 본문부분 -->
      <div id="contents-wrap">
         <div class="contents">
            <!-- 좌측 게시글 부분 -->
            <div class="posts_area">
               <article class="eachPost" id="이곳은게시물번호가들어갈자리"><!-- 작성자 정보 & 버튼 :: 아이디 불러와야함  --><div class="wrtInfo"><img src="https://img.icons8.com/nolan/64/apple-seed.png" style=" width: 49px;height: 49px; position: relative ; right: 215px; bottom: 19px;" /><div class="wrtProf"></div><div class="wrter" id=""><b>작성자아이디</b></div><div class="like-butt" id=""><span style="font-size: 12px; line-height: 0px;" class="comt-img"></span></div><div class="like-butt" id="" style="display: flex;"><span style="font-size: 12px; line-height: 0px;" class="like-img" id="likebtn"></span></div></div><!-- 게시글의 본문부분::도서사진,도서이름,본문 --><div class="postCont" style="text-align: center; font-size: 16px;"><!-- 도서사진, 도서이름, 게시글본문 --><div class="book-pic"><!-- 도서 사진 들어갈 부분 --></div><div class="book-name"><!-- 도서명 들어갈 부분 --></div><div class="post-body"><!-- 게시글 부분 --></div></div><div class="etcdiv" style="text-align: center; font-size: 16px;">태그<!-- 게시글 해시태그 부분 --></div></article>
               <article class="eachPost" id="이곳은게시물번호가들어갈자리"><!-- 작성자 정보 & 버튼 :: 아이디 불러와야함  --><div class="wrtInfo"><img src="https://img.icons8.com/nolan/64/apple-seed.png" style=" width: 49px;height: 49px; position: relative ; right: 215px; bottom: 19px;"/><div class="wrtProf"></div><div class="wrter" id=""><b>작성자아이디</b></div><div class="like-butt" id=""><span style="font-size: 12px; line-height: 0px;" class="comt-img"></span></div><div class="like-butt" id="" style="display: flex;"><span style="font-size: 12px; line-height: 0px;" class="like-img" id="likebtn"></span></div></div><!-- 게시글의 본문부분::도서사진,도서이름,본문 --><div class="postCont" style="text-align: center; font-size: 16px;"><!-- 도서사진, 도서이름, 게시글본문 --><div class="book-pic"><!-- 도서 사진 들어갈 부분 --></div><div class="book-name"><!-- 도서명 들어갈 부분 --></div><div class="post-body"><!-- 게시글 부분 --></div></div><div class="etcdiv" style="text-align: center; font-size: 16px;">태그<!-- 게시글 해시태그 부분 --></div></article>
               <article class="eachPost" id="이곳은게시물번호가들어갈자리"><!-- 작성자 정보 & 버튼 :: 아이디 불러와야함  --><div class="wrtInfo"><img src="https://img.icons8.com/nolan/64/apple-seed.png" style=" width: 49px;height: 49px; position: relative ; right: 215px; bottom: 19px;"/><div class="wrtProf"></div><div class="wrter" id=""><b>작성자아이디</b></div><div class="like-butt" id=""><span style="font-size: 12px; line-height: 0px;" class="comt-img"></span></div><div class="like-butt" id="" style="display: flex;"><span style="font-size: 12px; line-height: 0px;" class="like-img" id="likebtn"></span></div></div><!-- 게시글의 본문부분::도서사진,도서이름,본문 --><div class="postCont" style="text-align: center; font-size: 16px;"><!-- 도서사진, 도서이름, 게시글본문 --><div class="book-pic"><!-- 도서 사진 들어갈 부분 --></div><div class="book-name"><!-- 도서명 들어갈 부분 --></div><div class="post-body"><!-- 게시글 부분 --></div></div><div class="etcdiv" style="text-align: center; font-size: 16px;">태그<!-- 게시글 해시태그 부분 --></div></article>
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
               		<!-- 로고 이미지 혹은 링크 들어갈 자리 class="div_logo" -->
               	 <div style="box-sizing: border-box; font-size: 30px; text-align: center;">
              	 	<a href="/BookNet/main/mem_main.cls" id="logolink">PageTurner</a>
              	 </div>
       		</div>
            <div class="searchbox">
               <input class="searchinput" type="text" placeholder="search">
            </div>
            <div class="iconsbox">
               <!-- 상단 로그인, 가입하기 버튼 -->
               <a href="#" class="ft-log foot-box mg-whtie" id="lbtn">로그인</a>
               <a href="#" class="ft-join joinc0l0" style="padding-left:15px;" id="jbtn">가입하기</a>
               <!-- /상단 로그인, 가입하기 버튼 -->
            </div>
         </div>
      </div>
      <!-- 풋터부분 -->
      <!-- Footer Link -->
      <div class="closeing bgalss dCJb6 rBNOH Igw0E pmxbr HcJZg XfCBB IY_1 4EzTm" style="z-index: 2; height:111.938px; bottom: 0px; position: fixed;">
         <!-- close button -->
         <button class="xqRnw dCJp8">
            <!-- <span aria-label="닫기" style="text-align: center; margin: 0px auto;"><img src="https://img.icons8.com/plasticine/100/000000/close-window.png" style="width: 24px; height: 24px;"/></span> -->
            <span aria-label="닫기" class="insbak insgreyClose" style="margin: 3px;"></span>
         </button>
         <!-- /close button -->
         <!-- div area -->
         <div class="divflex" style="width: 903px; margin: 0px auto;">
            <!-- area in icon -->
            <div style="height: 56px; width: 56px; border: 1px solid white;" class="inblock posit bd-rad">
               <span aria-label="로그인" style="color: white; display: block; padding: 6px; padding-top: 15px;" class="XfCBB HcThg dCJb6 full0">LOGO</span>
            </div>
            <!-- /area in icon -->
            <!-- text body -->
            <div class="mg-left dblock rG18m">
               <!-- from Login -->
               <div class="mg-whtie">
                  <div>PageTurner에 로그인</div>
               </div>
               <!-- /from Login -->
               <!-- body -->
               <div class="footbody">PageTurner에서 다른 사람들과 당신이 좋아하는 책에 대해 이야기해보세요<img style="width: 20px; hieght: 20px;"src="https://img.icons8.com/cotton/64/000000/apple--v2.png"/></div>
               <!-- /body -->
            </div>
            <!-- /text body -->
            <!-- Login, Join button -->
            <div class="ft-btn">
               <!-- Login -->
               <div class="mt-12">
                  <a href="#" class="ft-log foot-box mg-whtie" id="lbtn2">로그인</a>
               </div>
               <!-- /Login -->
               <!-- Join -->
               <div style="text-align:center; margin-top: 12px; padding: 0px 30px;">
                  <a href="#" class="ft-join joinc0l0" id="jbtn2">가입하기</a>
               </div>
               <!-- /Join -->
            </div>
            <!-- /Login, Join button -->
         </div>
         <!-- /div area -->
      </div>
      <!-- /Footer Link -->
      		<!-- 풋터부분 -->
		<footer id="footer-wrap" style="padding:10px; height: 100px; color: #FFF;">		
					<h3 style="position:absolute; top:0px; left: 350px; display: flex;">Company</h3><br><h4 style="position:absolute;  top:25px; left: 352px; display: flex; font-size: 10pt;">Increpas</h4><br><h4 style="position:absolute; top:45px; left: 352px; display: flex; font-size:10pt;">서울특별시 관악구 신림동 시흥대로 552</h4>
					<h3 style="position:absolute; top:0px; left: 800px; display: flex;">Project_Team</h3><br><h4 style="position:absolute; top:25px; left: 802px; display: flex; font-size: 10pt;">BookNet KOR</h4><br><h4 style="position:absolute; top:45px; left: 802px; display: flex; font-size:10pt;">PageTurner</h4>
					<h3 style="position:absolute; top:0px; left: 1200px; display: flex;">만든이</h3><br><h4 style="position:absolute; top:25px; left: 1202px; display: flex; font-size: 10pt;">박 기윤 | 김 이슬 | 이 명환</h4><br><h4 style="position:absolute; top:45px; left: 1202px; display: flex; font-size:10pt;">서 동혁 | 우 현우 |</h4>
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