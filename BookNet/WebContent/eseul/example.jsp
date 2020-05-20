<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
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
								src="/BookNet/img/iconmonstr-bell-7-240.png">
						</button>
					</span> <span class="span_icons"> <img class="iconimg" id=""
						src="/BookNet/img/iconmonstr-compass-4-240.png">
					</span> <span class="span_icons"> <img class="iconimg" id=""
						src="/BookNet/img/iconmonstr-pen-15-240.png">
					</span> <span class=span_icons> <img class="iconimg" id=""
						src="/BookNet/img/iconmonstr-user-19-240.png">
					</span>
				</div>
			</div>
		</div>
		<!-- 본문부분 -->
		<div id="contents-wrap">
			<div class="contents">
				<!-- Left Column -->
				<div class="w3-third">

					<div class="w3-white w3-text-grey w3-card-4">
						<div class="w3-display-container">
							<img src="" style="width: 100%" alt="">
							<div class="w3-display-bottomleft w3-container w3-text-black">
								<h2>Jane Doe</h2>
							</div>
						</div>
						<div class="w3-container">
							<p>
								<i
									class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>Designer
							</p>
							<p>
								<i
									class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>London,
								UK
							</p>
							<p>
								<i
									class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>ex@mail.com
							</p>
							<p>
								<i
									class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>1224435534
							</p>
							<hr>

							<p class="w3-large">
								<b><i
									class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>Skills</b>
							</p>
							<p>Adobe Photoshop</p>
							<div class="w3-light-grey w3-round-xlarge w3-small">
								<div class="w3-container w3-center w3-round-xlarge w3-teal"
									style="width: 90%">90%</div>
							</div>
							<p>Photography</p>
							<div class="w3-light-grey w3-round-xlarge w3-small">
								<div class="w3-container w3-center w3-round-xlarge w3-teal"
									style="width: 80%">
									<div class="w3-center w3-text-white">80%</div>
								</div>
							</div>
							<p>Illustrator</p>
							<div class="w3-light-grey w3-round-xlarge w3-small">
								<div class="w3-container w3-center w3-round-xlarge w3-teal"
									style="width: 75%">75%</div>
							</div>
							<p>Media</p>
							<div class="w3-light-grey w3-round-xlarge w3-small">
								<div class="w3-container w3-center w3-round-xlarge w3-teal"
									style="width: 50%">50%</div>
							</div>
							<br>

							<p class="w3-large w3-text-theme">
								<b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>Languages</b>
							</p>
							<p>English</p>
							<div class="w3-light-grey w3-round-xlarge">
								<div class="w3-round-xlarge w3-teal"
									style="height: 24px; width: 100%"></div>
							</div>
							<p>Spanish</p>
							<div class="w3-light-grey w3-round-xlarge">
								<div class="w3-round-xlarge w3-teal"
									style="height: 24px; width: 55%"></div>
							</div>
							<p>German</p>
							<div class="w3-light-grey w3-round-xlarge">
								<div class="w3-round-xlarge w3-teal"
									style="height: 24px; width: 25%"></div>
							</div>
							<br>
						</div>
					</div>
					<br>

					<!-- End Left Column -->
				</div>

				<!-- Right Column -->
				<div class="w3-twothird">

					<div class="w3-container w3-card w3-white w3-margin-bottom">
						<h2 class="w3-text-grey w3-padding-16">
							<i
								class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Work
							Experience
						</h2>
						<div class="w3-container">
							<h5 class="w3-opacity">
								<b>Front End Developer / w3schools.com</b>
							</h5>
							<h6 class="w3-text-teal">
								<i class="fa fa-calendar fa-fw w3-margin-right"></i>Jan 2015 - <span
									class="w3-tag w3-teal w3-round">Current</span>
							</h6>
							<p>Lorem ipsum dolor sit amet. Praesentium magnam consectetur
								vel in deserunt aspernatur est reprehenderit sunt hic. Nulla
								tempora soluta ea et odio, unde doloremque repellendus iure,
								iste.</p>
							<hr>
						</div>
						<div class="w3-container">
							<h5 class="w3-opacity">
								<b>Web Developer / something.com</b>
							</h5>
							<h6 class="w3-text-teal">
								<i class="fa fa-calendar fa-fw w3-margin-right"></i>Mar 2012 -
								Dec 2014
							</h6>
							<p>Consectetur adipisicing elit. Praesentium magnam
								consectetur vel in deserunt aspernatur est reprehenderit sunt
								hic. Nulla tempora soluta ea et odio, unde doloremque
								repellendus iure, iste.</p>
							<hr>
						</div>
						<div class="w3-container">
							<h5 class="w3-opacity">
								<b>Graphic Designer / designsomething.com</b>
							</h5>
							<h6 class="w3-text-teal">
								<i class="fa fa-calendar fa-fw w3-margin-right"></i>Jun 2010 -
								Mar 2012
							</h6>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							</p>
							<br>
						</div>
					</div>

					<div class="w3-container w3-card w3-white">
						<h2 class="w3-text-grey w3-padding-16">
							<i
								class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Education
						</h2>
						<div class="w3-container">
							<h5 class="w3-opacity">
								<b>W3Schools.com</b>
							</h5>
							<h6 class="w3-text-teal">
								<i class="fa fa-calendar fa-fw w3-margin-right"></i>Forever
							</h6>
							<p>Web Development! All I need to know in one place</p>
							<hr>
						</div>
						<div class="w3-container">
							<h5 class="w3-opacity">
								<b>London Business School</b>
							</h5>
							<h6 class="w3-text-teal">
								<i class="fa fa-calendar fa-fw w3-margin-right"></i>2013 - 2015
							</h6>
							<p>Master Degree</p>
							<hr>
						</div>
						<div class="w3-container">
							<h5 class="w3-opacity">
								<b>School of Coding</b>
							</h5>
							<h6 class="w3-text-teal">
								<i class="fa fa-calendar fa-fw w3-margin-right"></i>2010 - 2013
							</h6>
							<p>Bachelor Degree</p>
							<br>
						</div>
					</div>

					<!-- End Right Column -->
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
