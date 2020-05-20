<!DOCTYPE html>
<html>
<title>FixedPage for Templates</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html, body, h1, h2, h3, h4, h5, h6 {
	font-family: "Roboto", sans-serif
}

* {
	margin: 0;
	padding: 0;
}

#header-wrap {
	position: fixed;
	top: 0px;
	width: 100%;
	height: 68px;
	background-color: #fff;
}

#contents-wrap {
	background-color: #F2F2F2;
	padding-top: 70px;
}

#footer-wrap {
	position: fixed;
	bottom: 0px;
	width: 100%;
	background-color: #fff;
}

.header {
	width: 900px;
	height: 60px;
	margin: 0 auto; /* border: solid 1px black; */
}

.logobox {
	float: left;
	width: 300px;
	height: 100%;
	line-height: 60px;
	/* padding-top: 5px; */
	margin-right: 5px;
	text-align: center;
	/* border: dashed 1px gray; */
}

.div_logo {
	margin: 0 auto;
}

.searchbox {
	float: left;
	width: 300px;
	height: 50px;
	padding-top: 8px;
	line-height: 50px;
	margin-left: 5px;
	text-align: center;
}

.searchinput {
	box-sizing: border-box;
	width: 100%;
	height: 100%;
	padding: 7px;
	font-size: 16px;
}

.iconsbox {
	float: right;
	width: 250px;
	height: 100%;
	line-height: 60px;
	/* padding-top: 8px; */
	margin-left: 5px;
	text-align: right;
}

.contents {
	width: 900px;
	height: 2000px;
	margin: 0 auto;
	/* text-align: center; */
	font-size: 100px; /* border: solid 1px black; */
	line-height: 2000px;
}

.posts_area {
	float: left;
	width: 580px;
	height: 100%;
	margin: 0 auto;
	border-right: dashed 1px black;
	z-index: 1;
}

.info_area {
	position: fixed;
	float: right;
	width: 300px;
	height: 100%;
	margin: 0 auto;
	margin-left: 600px;
	z-index: 2;
}

.footer {
	width: 900px;
	height: 80px;
	margin: 0 auto; /* border: solid 1px black; */
}

.span_icons { /*float: left;*/
	display: inline-block;
	width: 30px;
	height: 30px;
	/* padding: 5px 7px; */
	margin: 7px;
}

.iconimg {
	box-sizing: border-box;
	width: 100%;
	height: auto;
	margin-bottom: 10px;
}

#butt {
	width: 100%;
	height: 100%;
	border: 0;
	outline: none;
}
</style>
<body>
	<div>
		<!-- 헤더부분 -->
		<div id="header-wrap">
			<div class="header">
				<div class="logobox">
					<!-- 로고 이미지 혹은 링크 들어갈 자리 class="div_logo" -->
					<div
						style="margin-top: 5px; box-sizing: border-box; font-size: 30px; text-align: center;">PageTurner</div>
				</div>
				<div class="searchbox">
					<input class="searchinput" type="text" placeholder="search">
				</div>
				<div class="iconsbox">
					<span class="span_icons"> <!-- 알림페이지:: 메인페이지에서 메인부분만 변경! -->
						<button type="button" id="butt" class="aBtn">
							<img class="iconimg" id=""
								src="/grapeFruit/img/iconmonstr-bell-7-240.png">
						</button>
					</span> <span class="span_icons"> <img class="iconimg" id=""
						src="/grapeFruit/img/iconmonstr-compass-4-240.png">
					</span> <span class="span_icons"> <img class="iconimg" id=""
						src="/grapeFruit/img/iconmonstr-pen-15-240.png">
					</span> <span class=span_icons> <img class="iconimg" id=""
						src="/grapeFruit/img/iconmonstr-user-19-240.png">
					</span>
				</div>
			</div>
		</div>
		<!-- 본문부분 -->
		<div id="contents-wrap">
			<div class="contents">
				<!-- 이곳에 사용할 템플릿의 메인부분을 넣어주시면 됩니당! '-' -->
			</div>
		</div>
		<!-- 풋터부분 -->
		<div id="footer-wrap">
			<div class="footer" style="text-align: center;">footer</div>
		</div>
	</div>
</body>
</html>
