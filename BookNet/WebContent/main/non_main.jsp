<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<%--
	이 페이지는 비회원에게 보여지는 게시물 메인페이지 | 로그인, 가입하기 유도 페이지 입니다.
  @author 서동혁
  @version v.0.1.0
  @since 2020.05.25
 --%>
<html style="background-color: #F3F0F7">
<head>
<meta charset="UTF-8">
<title>비회원 메인페이지</title>
<link rel="stylesheet" href="/BookNet/css/nonmem.css">
<link rel="stylesheet" href="/BookNet/css/proj_fixed.css">
<link rel="stylesheet" href="/BookNet/css/modal.css">
<link rel="stylesheet" href="/BookNet/css/w3.css">
<link rel="stylesheet" href="/BookNet/css/non_search.css">
<script type="text/javascript" src="/BookNet/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="/BookNet/js/clock.js"></script>
<script type="text/javascript" src="/BookNet/js/footer.js"></script>
<script type="text/javascript" src="/BookNet/js/nonmem.js"></script>
<script src = "https://unpkg.com/sweetalert/dist/sweetalert.min.js" ></script>
</head>
<body onload="printClock()"/>
<!-- 파라미터로 넘길 데이터값 -->
<form method="POST" id="frm">
	<input type="hidden" id="bno" name="bno"> <!-- 글 작성할때 넘겨줄 책 번호 -->
	<input type="hidden" id="eno" name="eno"> <!-- 글 작성할때 넘겨줄 감정번호 -->
	<input type="hidden" id="body" name="body"> <!-- 글 작성할때 넘겨줄 게시글 본문 -->
	<input type="hidden" id="tags" name="tags"> <!-- 글 작성할때 넘겨줄 해시태그 -->
</form>
<form method="POST" id="frm2">
	<input type="hidden" id="pno" name="pno"> <!-- 게시글 삭제시 넘겨줄 게시글 번호 -->
</form>
	<div>
		<!-- 본문부분 -->
		<div id="contents-wrap">
			<div class="contents">
				<!-- 좌측 게시글 부분 -->
				<div class="posts_area">
					<c:forEach var="data" items="${LIST}">
						<article class="eachPost"><!-- id="${data.pno}" -->
							<!-- 작성자 정보 & 버튼 :: 아이디 불러와야함  -->
							<div class="wrtInfo">
								<div class="wrtProf">
									<img src="">
								</div>
								<div class="wrter" id="id${data.pno}">
									<a href=""><b id="">${data.id}</b></a>
								</div> 
								<div class="time" id="time${data.pno}">
									${data.pdate}
								</div>
								<c:if test="${SID eq data.id}">
									<div class="like-butt" id="${data.pno}" style="display: flex;'">
										<span style="font-size: 12px; line-height: 0px;" class="e-d-img edbtn" id=""></span>
									</div>
								</c:if>
								<div class="like-butt" id="" style="display: flex;'">
									<span style="font-size: 12px; line-height: 0px;" class="like-img likebtn" onclick=" id=""></span>
								</div>
							</div>
							<!-- 게시글의 본문부분::도서사진,도서이름,본문 -->
							<div class="postCont" style="text-align: center; font-size: 16px;">
								<!-- 도서사진, 도서이름, 게시글본문 -->
								<div class="book-pic">
									<!-- 도서 사진 들어갈 부분 -->
									<img id="img${data.pno}" src="${data.largeimg}" style="width: 90%; height: auto;" />
								</div>
								<div class="genre-name" style="font-size: 12px; text-align: left;" id="genre${data.pno}">
									<!-- 도서장르 들어갈 부분 -->
									${data.gname}
								</div>
								<div class="book-name" id="bname${data.pno}">
									<!-- 도서명 들어갈 부분 -->
									<b>${data.bname}</b>
								</div>
								<div class="post-body">
									<!-- 게시글 부분 -->
									<a style="box-sizing: border-box; font-size: 18px;" id="pbody${data.pno}">${data.postcont}</a>
								</div>
							</div>
							<div class="wrtInfo">
								<div class="etcdiv" style="text-align: left; font-size: 13px;" id="hash${data.pno}">${data.hash}</div>
								<span class="modifdiv modi_post" id="${data.pno}"></span>
							</div>
						</article>
					</c:forEach>
					<div class="modal detailPost" role="none">
					<!-- 게시물 클릭시 로그인 유도-->
					</div>
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
						<a href="/BookNet/main/non.cls" style="color: #120E0A;"><b>PageTurner</b></a>
					</div>
				</div>
				<div class="searchbox">
					<input class="searchinput" type="text" placeholder="search">
				</div>
			  <div class="iconsbox">
               <!-- 상단 로그인, 가입하기 버튼 -->
               <a href="#" class="ft-log foot-box mg-whtie"  style="color: #fff;"id="lbtn">로그인</a>
               <a href="#" class="ft-join joinc0l0" style="padding-left:15px; color:rgba(var(--d69,0,149,246),1);" id="jbtn">가입하기</a>
               <!-- /상단 로그인, 가입하기 버튼 -->
            </div>
			</div>
		</div>
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
		                  <a href="#" class="ft-log foot-box mg-whtie"style="color: #fff;" id="lbtn2">로그인</a>
		               </div>
		               <!-- /Login -->
		               <!-- Join -->
		               <div style="text-align:center; margin-top: 12px; padding: 0px 30px;">
		                  <a href="#" class="ft-join joinc0l0" style="color:rgba(var(--d69,0,149,246),1);"id="jbtn2">가입하기</a>
		               </div>
		               <!-- /Join -->
		            </div>
		            <!-- /Login, Join button -->
		         </div> 
		         <!-- /div area -->
		      </div>
		<!-- /Footer Link -->
	<!-- 풋터부분 -->
			<footer id="footer-wrap" style="padding:10px; height: 86.45px; color: #FFF;">		
					<h3 style="position:absolute; top:40px; left: 255px; display: flex;font-family:Verdana,sans-serif;">Company</h3><br><h4 style="position:absolute;  top:35px; left: 380px; display: flex; font-size: 10pt;font-family:Verdana,sans-serif;">Increpas</h4><br><h4 style="position:absolute; top:55px; left: 380px; display: flex; font-size:10pt;font-family:Verdana,sans-serif;">서울특별시 관악구 신림동 시흥대로 552</h4>
					<h3 style="position:absolute; top:40px; left: 735px; display: flex;font-family:Verdana,sans-serif;">Project_Team</h3><br><h4 style="position:absolute; top:35px; left: 910px; display: flex; font-size: 10pt;font-family:Verdana,sans-serif;">BookNet KOR</h4><br><h4 style="position:absolute; top:55px; left: 910px; display: flex; font-size:10pt;font-family:Verdana,sans-serif;">PageTurner</h4>
					<h3 style="position:absolute; top:40px; left: 1135px; display: flex;font-family:Verdana,sans-serif;">만든이</h3><br><h4 style="position:absolute; top:35px; left: 1222px; display: flex; font-size: 10pt;font-family:Verdana,sans-serif;">박 기윤 | 김 이슬 | 이 명환</h4><br><h4 style="position:absolute; top:55px; left: 1222px; display: flex; font-size:10pt;font-family:Verdana,sans-serif;">서 동혁 | 우 현우 |</h4>
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