<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원용 메인페이지</title>
<link rel="stylesheet" href="/grapeFruit/css/proj.css">
<link rel="stylesheet" href="/grapeFruit/css/copy(1).css">
<script type="text/javascript" src="/grapeFruit/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="/grapeFruit/js/proj.js"></script>
<style>
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div>
		<!-- 헤더부분 -->
		<div id="header-wrap">
			<div class="header">
				<div class="logobox">
					<!-- 로고 이미지 혹은 링크 들어갈 자리 class="div_logo" -->
					<div style="box-sizing: border-box; font-size: 30px; text-align: center;">PageTurner</div>
				</div>
				<div class="searchbox">
					<input class="searchinput" type="text" placeholder="search">
				</div>
				<div class="iconsbox">
					<span class="span_icons"> 
						<!-- 알림페이지:: 메인페이지에서 메인부분만 변경! -->
						<button type="button" id="butt" class="aBtn">
							<img class="iconimg" id="" src="/grapeFruit/img/iconmonstr-bell-7-240.png">
						</button>
					</span> 
					<span class="span_icons"> <img class="iconimg" id=""
						src="/grapeFruit/img/iconmonstr-compass-4-240.png">
					</span> 
					<span class="span_icons"> <img class="iconimg" id=""
						src="/grapeFruit/img/iconmonstr-pen-15-240.png">
					</span> 
					<span class=span_icons> <img class="iconimg" id=""
						src="/grapeFruit/img/iconmonstr-user-19-240.png">
					</span>
				</div>
			</div>
		</div>
		<!-- 본문부분 -->
		<div id="contents-wrap">
			<div class="contents">
				<!-- 좌측 게시글 부분 -->
				<div class="posts_area">
					게시글 부분 
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
		<!-- 풋터부분 -->
		<div id="footer-wrap">
			<div class="footer" style="text-align: center;">footer</div>
		</div>
	</div>
</body>
</html>