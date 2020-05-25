<!DOCTYPE html>
<html>
<title>FixedPage for Templates</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/BookNet/css/proj.css">
<link rel="stylesheet" href="/BookNet/css/w3.css">

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
				<div id="SITE_CONTAINER">
					<style type="text/css" data-styleid="uploadedFonts">
					  @font-face {
						font-family: wf_e27ad219244b4630b03660125;
						src: url("https://static.wixstatic.com/ufonts/510239_e27ad219244b4630b036601258c28e78/woff2/file.woff2") format("woff2"),
						  url("https://static.wixstatic.com/ufonts/510239_e27ad219244b4630b036601258c28e78/woff/file.woff") format("woff"),
						  url("https://static.wixstatic.com/ufonts/510239_e27ad219244b4630b036601258c28e78/ttf/file.ttf") format("ttf");
					  }
					</style>
					<div>
					  <style type="text/css" data-styleid="theme_fonts">
				
						.font_2 {
						  font: normal normal normal 28px/1.4em wfont_510239_e27ad219244b4630b036601258c28e78, wf_e27ad219244b4630b03660125, orig_d_2_coding;
						  color: #000000;
						}
				
						.font_4 {
						  font: normal normal normal 40px/1.4em wfont_510239_e27ad219244b4630b036601258c28e78, wf_e27ad219244b4630b03660125, orig_d_2_coding;
						  color: #000000;
						}
				
						.font_6 {
						  font: normal normal normal 22px/1.4em wfont_510239_e27ad219244b4630b036601258c28e78, wf_e27ad219244b4630b03660125, orig_d_2_coding;
						  color: #000000;
						}
					  </style>
					</div>
					<div id="CSS_CONTAINER"></div>
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
				
						.pc1[data-is-absolute-layout="true"]>.pc1centeredContent>.pc1inlineContent {
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
				
						.style-kahxfitn[data-is-absolute-layout="true"]>.style-kahxfitninlineContent {
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
				
						.txtNew ol,
						.txtNew ul {
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
				
						.txtNew ul ul,
						.txtNew ol ul {
						  list-style-type: circle;
						}
				
						.txtNew ul ul ul,
						.txtNew ol ul ul {
						  list-style-type: square;
						}
				
						.txtNew ul ol ul,
						.txtNew ol ol ul {
						  list-style-type: square;
						}
				
						.txtNew ul[dir="rtl"],
						.txtNew ol[dir="rtl"] {
						  padding-left: 0;
						  padding-right: 1.3em;
						  margin-left: 0;
						  margin-right: 0.5em;
						}
				
						.txtNew ul[dir="rtl"] ul,
						.txtNew ul[dir="rtl"] ol,
						.txtNew ol[dir="rtl"] ul,
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
				
						.style-kahydzlx[data-is-absolute-layout="true"]>.style-kahydzlxinlineContent {
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
						  border-radius: 0;
						  position: absolute;
						  top: 0;
						  right: 0;
						  bottom: 0;
						  left: 0;
						}
				
						.style-kahykq29[data-is-absolute-layout="true"]>.style-kahykq29inlineContent {
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
				
						.style-kai5ngt3[data-is-absolute-layout="true"]>.style-kai5ngt3inlineContent {
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
				
						.style-kai3srj7[data-is-absolute-layout="true"]>.style-kai3srj7inlineContent {
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
				
						.style-kai3vrh4[data-is-absolute-layout="true"]>.style-kai3vrh4inlineContent {
						  position: absolute;
						  top: 0;
						  right: 0;
						  bottom: 0;
						  left: 0;
						}
					  </style>
					</div>
					<div class="noop visual-focus-on" style="position:relative">
					  
					  
					  
					  <div id="SITE_ROOT" class="SITE_ROOT" style="width:100%;min-width:900px;padding-bottom:0;top:50px" aria-hidden="false">
						<div id="masterPage" class="mesh-layout" data-mesh-layout="grid">
						  
						  <main tabindex="-1" data-is-mobile="false" data-is-mesh="true" data-site-width="980" style="left:0;margin-left:0;width:100%;min-width:900px;top:0;bottom:;right:;position:" class="pc1" data-state="" id="PAGES_CONTAINER">
							
							<div style="position:relative" id="PAGES_CONTAINERcenteredContent" class="pc1centeredContent">
							  
							  <div style="position:relative" id="PAGES_CONTAINERinlineContent" class="pc1inlineContent">
								<div style="width:100%">
									<div id="c1dmpinlineContent-gridWrapper" data-mesh-internal="true">
									  
									  <div data-is-absolute-layout="false" style="top:;bottom:;left:;right:;position:" class="style-kahxfitn" id="comp-kahxf92g">
										
										  <div class="style-kahxfitninlineContent" id="comp-kahxf92ginlineContent">
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
												grid-template-rows: min-content min-content min-content min-content min-content min-content min-content min-content 1fr;
												grid-template-columns: 100%;
											  }
				
											  #comp-kahxjzbw {
												position: relative;
												margin: 25px 0px 18px 0;
												left: 358px;
												grid-area: 1 / 1 / 2 / 2;
												justify-self: start;
												align-self: start;
											  }
				
											  #comp-kahy8rpj {
												position: relative;
												margin: 0px 0px -99px 0;
												left: 27px;
												grid-area: 3 / 1 / 6 / 2;
												justify-self: start;
												align-self: start;
											  }
				
											  #comp-kahzqprw {
												position: relative;
												margin: 0px 0px -36px 0;
												left: 27px;
												grid-area: 7 / 1 / 8 / 2;
												justify-self: start;
												align-self: start;
											  }
				
											  #comp-kahykq0w {
												position: relative;
												margin: 0px 0px 22px 0;
												left: 330px;
												grid-area: 2 / 1 / 4 / 2;
												justify-self: start;
												align-self: start;
											  }
				
											  #comp-kahztsue {
												position: relative;
												margin: 0px 0px 3px 0;
												left: 330px;
												grid-area: 4 / 1 / 5 / 2;
												justify-self: start;
												align-self: start;
											  }
				
											  #comp-kahyq160 {
												position: relative;
												margin: 0px 0px -82px 0;
												left: 330px;
												grid-area: 6 / 1 / 7 / 2;
												justify-self: start;
												align-self: start;
											  }
				
											  #comp-kai65t3p {
												position: relative;
												margin: 0px 0px 3px 0;
												left: 330px;
												grid-area: 8 / 1 / 9 / 2;
												justify-self: start;
												align-self: start;
											  }
				
											  #comp-kai65t47 {
												position: relative;
												margin: 0px 0px 36px 0;
												left: 330px;
												grid-area: 9 / 1 / 10 / 2;
												justify-self: start;
												align-self: start;
											  }
				
											  #comp-kahzhh7n {
												position: relative;
												margin: 0px 0px 14px 0;
												left: 27px;
												grid-area: 2 / 1 / 3 / 2;
												justify-self: start;
												align-self: start;
											  }
				
											  #comp-kahxf92gcenteredContent {
												position: relative;
											  }
											</style>
											<div id="comp-kahxf92ginlineContent-gridWrapper" data-mesh-internal="true">
											  <div id="comp-kahxf92ginlineContent-gridContainer" data-mesh-internal="true">
												<div data-packed="true" style="width: 264px;" class="txtNew" id="comp-kahxjzbw">
												  <h1 class="font_0" style="font-size:75px;"><span style="font-family:wfont_510239_e27ad219244b4630b036601258c28e78,wf_e27ad219244b4630b03660125,orig_d_2_coding;">My
														Page</span></h1>
												</div>
												<div data-is-absolute-layout="false" style="top:;bottom:;left:;right:;position:" class="style-kahydzlx" id="comp-kahy8rpj">
												  <div id="comp-kahy8rpjbg" class="style-kahydzlxbg"></div>
												  <div class="style-kahydzlxinlineContent" id="comp-kahy8rpjinlineContent">
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
													<div id="comp-kahy8rpjinlineContent-gridContainer" data-mesh-internal="true">
													</div>
												  </div>
												</div>
												<div data-is-absolute-layout="false" style="top:;bottom:;left:;right:;position:" class="c1" id="comp-kahzqprw">
												  <div id="comp-kahzqprwbg" class="c1bg"></div>
												  <div class="c1inlineContent" id="comp-kahzqprwinlineContent">
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
														grid-area: 1 / 1 / 2 / 2;
														justify-self: start;
														align-self: start;
													  }
				
													  #comp-kahzrwoa {
														position: relative;
														margin: 0px 0px 19px 0;
														left: 13px;
														grid-area: 2 / 1 / 3 / 2;
														justify-self: start;
														align-self: start;
													  }
				
													  #comp-kahzsngs {
														position: relative;
														margin: 0px 0px 16px 0;
														left: 13px;
														grid-area: 3 / 1 / 4 / 2;
														justify-self: start;
														align-self: start;
													  }
				
													  #comp-kahzqprwcenteredContent {
														position: relative;
													  }
													</style>
													<div id="comp-kahzqprwinlineContent-gridWrapper" data-mesh-internal="true">
													  <div id="comp-kahzqprwinlineContent-gridContainer" data-mesh-internal="true">
														<div data-packed="true" style="width: 250px;" class="txtNew" id="comp-kahzrcco">
														  <h2 class="font_2" style="text-align:center;">Heading 2</h2>
														</div>
														<div data-packed="true" style="width: 250px;" class="txtNew" id="comp-kahzrwoa">
														  <h2 class="font_2" style="text-align:center;">Heading 2</h2>
														</div>
														<div data-packed="true" style="width: 250px;" class="txtNew" id="comp-kahzsngs">
														  <h2 class="font_2" style="text-align:center;">Heading 2</h2>
														</div>
													  </div>
													</div>
												  </div>
												</div>
												<div data-is-absolute-layout="false" style="top:;bottom:;left:;right:;position:" class="style-kahykq29" id="comp-kahykq0w">
												  <div id="comp-kahykq0wbg" class="style-kahykq29bg"></div>
												  <div class="style-kahykq29inlineContent" id="comp-kahykq0winlineContent">
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
														grid-area: 1 / 1 / 2 / 2;
														justify-self: start;
														align-self: start;
													  }
				
													  #comp-kahykq0wcenteredContent {
														position: relative;
													  }
													</style>
													<div id="comp-kahykq0winlineContent-gridWrapper" data-mesh-internal="true">
													  <div id="comp-kahykq0winlineContent-gridContainer" data-mesh-internal="true">
														<div data-is-absolute-layout="false" style="top:;bottom:;left:;right:;position:" class="style-kai5ngt3" id="comp-kahz353j">
														  <div id="comp-kahz353jbg" class="style-kai5ngt3bg"></div>
														  <div class="style-kai5ngt3inlineContent" id="comp-kahz353jinlineContent">
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
																grid-area: 1 / 1 / 2 / 2;
																justify-self: start;
																align-self: start;
															  }
				
															  #comp-kahzedrx {
																position: relative;
																margin: 0px 0px 1px 0;
																left: 0px;
																grid-area: 2 / 1 / 3 / 2;
																justify-self: start;
																align-self: start;
															  }
				
															  #comp-kahz353jcenteredContent {
																position: relative;
															  }
															</style>
															<div id="comp-kahz353jinlineContent-gridWrapper" data-mesh-internal="true">
															  <div id="comp-kahz353jinlineContent-gridContainer" data-mesh-internal="true">
																<div data-packed="true" style="width: 105px;" class="txtNew" id="comp-kahzlc3l">
																  <h6 class="font_6">Heading 6</h6>
																</div>
																<div data-packed="true" style="width: 250px;" class="txtNew" id="comp-kahzedrx">
																  <h2 class="font_2">Heading 2</h2>
																</div>
															  </div>
															</div>
														  </div>
														</div>
													  </div>
													</div>
												  </div>
												</div>
												<div data-packed="true" style="width: 276px;" class="txtNew" id="comp-kahztsue">
												  <h4 class="font_4">Heading 4</h4>
												</div>
												<div data-is-absolute-layout="false" style="top:;bottom:;left:;right:;position:" class="style-kahykq29" id="comp-kahyq160">
												  <div id="comp-kahyq160bg" class="style-kahykq29bg"></div>
												  <div class="style-kahykq29inlineContent" id="comp-kahyq160inlineContent">
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
														grid-area: 1 / 1 / 2 / 2;
														justify-self: start;
														align-self: start;
													  }
				
													  #comp-kahyq160centeredContent {
														position: relative;
													  }
													</style>
													<div id="comp-kahyq160inlineContent-gridWrapper" data-mesh-internal="true">
													  <div id="comp-kahyq160inlineContent-gridContainer" data-mesh-internal="true">
														<div data-is-absolute-layout="false" style="top:;bottom:;left:;right:;position:" class="style-kai3srj7" id="comp-kai3qfqd">
														  <div id="comp-kai3qfqdbg" class="style-kai3srj7bg"></div>
														  <div class="style-kai3srj7inlineContent" id="comp-kai3qfqdinlineContent">
															<style id="comp-kai3qfqd-mesh-styles">
															  #comp-kai3qfqdinlineContent {
																height: 95px;
																width: 568px;
																position: relative;
															  }
				
															  #comp-kai3qfqdinlineContent-gridContainer {
																position: static;
																display: grid;
																height: auto;
																width: 100%;
																min-height: auto;
																grid-template-rows: min-content 1fr;
																grid-template-columns: 100%;
															  }
				
															  #comp-kai3uids {
																position: relative;
																margin: 7px 0px -37px 0;
																left: 6px;
																grid-area: 1 / 1 / 2 / 2;
																justify-self: start;
																align-self: start;
															  }
				
															  #comp-kai3za90 {
																position: relative;
																margin: 8px 0px 17px 0;
																left: 75px;
																grid-area: 1 / 1 / 2 / 2;
																justify-self: start;
																align-self: start;
															  }
				
															  #comp-kai41mkt {
																position: relative;
																margin: 0px 0px 6px 0;
																left: 75px;
																grid-area: 2 / 1 / 3 / 2;
																justify-self: start;
																align-self: start;
															  }
				
															  #comp-kai63k32 {
																position: relative;
																margin: 7px 0px 17px 0;
																left: 531px;
																grid-area: 1 / 1 / 2 / 2;
																justify-self: start;
																align-self: start;
															  }
				
															  #comp-kai64s7p {
																position: relative;
																margin: 7px 0px 17px 0;
																left: 500px;
																grid-area: 1 / 1 / 2 / 2;
																justify-self: start;
																align-self: start;
															  }
				
															  #comp-kai3qfqdcenteredContent {
																position: relative;
															  }
															</style>
															<div id="comp-kai3qfqdinlineContent-gridWrapper" data-mesh-internal="true">
															  <div id="comp-kai3qfqdinlineContent-gridContainer" data-mesh-internal="true">
																<div data-is-absolute-layout="false" style="top:;bottom:;left:;right:;position:" class="style-kai3vrh4" id="comp-kai3uids">
																  <div id="comp-kai3uidsbg" class="style-kai3vrh4bg"></div>
																  <div class="style-kai3vrh4inlineContent" id="comp-kai3uidsinlineContent">
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
																	<div id="comp-kai3uidsinlineContent-gridContainer" data-mesh-internal="true"></div>
																  </div>
																</div>
																<div data-packed="true" style="width: 220px;" class="txtNew" id="comp-kai3za90">
																  <h2 class="font_2" style="font-size:21px;"><span style="font-family:wfont_510239_e27ad219244b4630b036601258c28e78,wf_e27ad219244b4630b03660125,orig_d_2_coding;"><span style="font-size:21px;"><span style="color:#292929;">Small
																		  Title</span></span></span></h2>
																</div>
																<div data-packed="true" style="width: 481px;" class="txtNew" id="comp-kai41mkt">
																  <p class="font_7"><span style="font-family:wfont_510239_e27ad219244b4630b036601258c28e78,wf_e27ad219244b4630b03660125,orig_d_2_coding;">I'm
																	  a paragraph. Click here to add your own text and edit me. It's
																	  easy.</span></p>
																</div>
																<div data-is-absolute-layout="false" style="top:;bottom:;left:;right:;position:" class="style-kai3srj7" id="comp-kai63k32">
																  <div id="comp-kai63k32bg" class="style-kai3srj7bg"></div>
																  <div class="style-kai3srj7inlineContent" id="comp-kai63k32inlineContent">
																	<style id="comp-kai63k32-mesh-styles">
																	  #comp-kai63k32inlineContent {
																		height: auto;
																		width: 26px;
																		position: relative;
																	  }
				
																	  #comp-kai63k32inlineContent-gridContainer {
																		position: static;
																		height: auto;
																		width: 100%;
																		min-height: 26px;
																	  }
				
																	  #comp-kai63k32centeredContent {
																		position: relative;
																	  }
																	</style>
																	<div id="comp-kai63k32inlineContent-gridContainer" data-mesh-internal="true"></div>
																  </div>
																</div>
																<div data-is-absolute-layout="false" style="top:;bottom:;left:;right:;position:" class="style-kai3vrh4" id="comp-kai64s7p">
																  <div id="comp-kai64s7pbg" class="style-kai3vrh4bg"></div>
																  <div class="style-kai3vrh4inlineContent" id="comp-kai64s7pinlineContent">
																	<style id="comp-kai64s7p-mesh-styles">
																	  #comp-kai64s7pinlineContent {
																		height: auto;
																		width: 26px;
																		position: relative;
																	  }
				
																	  #comp-kai64s7pinlineContent-gridContainer {
																		position: static;
																		height: auto;
																		width: 100%;
																		min-height: 26px;
																	  }
				
																	  #comp-kai64s7pcenteredContent {
																		position: relative;
																	  }
																	</style>
																	<div id="comp-kai64s7pinlineContent-gridContainer" data-mesh-internal="true"></div>
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
												<div data-packed="true" style="width: 276px;" class="txtNew" id="comp-kai65t3p">
												  <h4 class="font_4">Heading 4</h4>
												</div>
												<div data-is-absolute-layout="false" style="top:;bottom:;left:;right:;position:" class="style-kahykq29" id="comp-kai65t47">
												  <div id="comp-kai65t47bg" class="style-kahykq29bg"></div>
												  <div class="style-kahykq29inlineContent" id="comp-kai65t47inlineContent">
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
														grid-area: 1 / 1 / 2 / 2;
														justify-self: start;
														align-self: start;
													  }
				
													  #comp-kai65t47centeredContent {
														position: relative;
													  }
													</style>
													<div id="comp-kai65t47inlineContent-gridWrapper" data-mesh-internal="true">
													  <div id="comp-kai65t47inlineContent-gridContainer" data-mesh-internal="true">
														<div data-is-absolute-layout="false" style="top:;bottom:;left:;right:;position:" class="style-kai3vrh4" id="comp-kai65t6x">
														  <div id="comp-kai65t6xbg" class="style-kai3vrh4bg"></div>
														  <div class="style-kai3vrh4inlineContent" id="comp-kai65t6xinlineContent">
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
																grid-area: 1 / 1 / 2 / 2;
																justify-self: start;
																align-self: start;
															  }
				
															  #comp-kai65t6z {
																position: relative;
																margin: 8px 0px 17px 0;
																left: 75px;
																grid-area: 1 / 1 / 2 / 2;
																justify-self: start;
																align-self: start;
															  }
				
															  #comp-kai65t701 {
																position: relative;
																margin: 0px 0px 6px 0;
																left: 75px;
																grid-area: 2 / 1 / 3 / 2;
																justify-self: start;
																align-self: start;
															  }
				
															  #comp-kai65t711 {
																position: relative;
																margin: 7px 0px 17px 0;
																left: 531px;
																grid-area: 1 / 1 / 2 / 2;
																justify-self: start;
																align-self: start;
															  }
				
															  #comp-kai65t72 {
																position: relative;
																margin: 7px 0px 17px 0;
																left: 500px;
																grid-area: 1 / 1 / 2 / 2;
																justify-self: start;
																align-self: start;
															  }
				
															  #comp-kai65t6xcenteredContent {
																position: relative;
															  }
															</style>
															<div id="comp-kai65t6xinlineContent-gridWrapper" data-mesh-internal="true">
															  <div id="comp-kai65t6xinlineContent-gridContainer" data-mesh-internal="true">
																<div data-is-absolute-layout="false" style="top:;bottom:;left:;right:;position:" class="style-kai3vrh4" id="comp-kai65t6y">
																  <div id="comp-kai65t6ybg" class="style-kai3vrh4bg"></div>
																  <div class="style-kai3vrh4inlineContent" id="comp-kai65t6yinlineContent">
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
																	<div id="comp-kai65t6yinlineContent-gridContainer" data-mesh-internal="true"></div>
																  </div>
																</div>
																<div data-packed="true" style="width: 220px;" class="txtNew" id="comp-kai65t6z">
																  <h2 class="font_2" style="font-size:21px;"><span style="font-family:wfont_510239_e27ad219244b4630b036601258c28e78,wf_e27ad219244b4630b03660125,orig_d_2_coding;"><span style="font-size:21px;"><span>Small
																		  Title</span></span></span></h2>
																</div>
																<div data-packed="true" style="width: 481px;" class="txtNew" id="comp-kai65t701">
																  <p class="font_7"><span style="font-family:wfont_510239_e27ad219244b4630b036601258c28e78,wf_e27ad219244b4630b03660125,orig_d_2_coding;">I'm
																	  a paragraph. Click here to add your own text and edit me. It's
																	  easy.</span></p>
																</div>
																<div data-is-absolute-layout="false" style="top:;bottom:;left:;right:;position:" class="style-kai3vrh4" id="comp-kai65t711">
																  <div id="comp-kai65t711bg" class="style-kai3vrh4bg"></div>
																  <div class="style-kai3vrh4inlineContent" id="comp-kai65t711inlineContent">
																	<style id="comp-kai65t711-mesh-styles">
																	  #comp-kai65t711inlineContent {
																		height: auto;
																		width: 26px;
																		position: relative;
																	  }
				
																	  #comp-kai65t711inlineContent-gridContainer {
																		position: static;
																		height: auto;
																		width: 100%;
																		min-height: 26px;
																	  }
				
																	  #comp-kai65t711centeredContent {
																		position: relative;
																	  }
																	</style>
																	<div id="comp-kai65t711inlineContent-gridContainer" data-mesh-internal="true"></div>
																  </div>
																</div>
																<div data-is-absolute-layout="false" style="top:;bottom:;left:;right:;position:" class="style-kai3vrh4" id="comp-kai65t72">
																  <div id="comp-kai65t72bg" class="style-kai3vrh4bg"></div>
																  <div class="style-kai3vrh4inlineContent" id="comp-kai65t72inlineContent">
																	<style id="comp-kai65t72-mesh-styles">
																	  #comp-kai65t72inlineContent {
																		height: auto;
																		width: 26px;
																		position: relative;
																	  }
				
																	  #comp-kai65t72inlineContent-gridContainer {
																		position: static;
																		height: auto;
																		width: 100%;
																		min-height: 26px;
																	  }
				
																	  #comp-kai65t72centeredContent {
																		position: relative;
																	  }
																	</style>
																	<div id="comp-kai65t72inlineContent-gridContainer" data-mesh-internal="true"></div>
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
												<div data-packed="true" style="width: 276px;" class="txtNew" id="comp-kahzhh7n">
												  <h4 class="font_4" style="text-align:center;"><span style="font-family:wfont_510239_e27ad219244b4630b036601258c28e78,wf_e27ad219244b4630b03660125,orig_d_2_coding;">Heading
													  4</span></h4>
												</div>
											  </div>
											</div>
										  </div>
										</div>
									</div>
								</div>
							  </div>
							</div>
						  </main>
						  
						</div>
					  </div>
					  <div id="WIX_ADS" class="wix-ads-2 visible desktop">
						<style type="text/css" data-styleid="wixAds-style">
						  @charset "UTF-8";
				
						  /*the ad font is Helvetica. we don't wont users to use it in the sites, so we changed the name of the font */
						  @font-face {
							font-family: "wixFreemiumFontW01-35Thin";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/56be84de-9d60-4089-8df0-0ea6ec786b84.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/56be84de-9d60-4089-8df0-0ea6ec786b84.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/50d35bbc-dfd4-48f1-af16-cf058f69421d.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/278bef59-6be1-4800-b5ac-1f769ab47430.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/2e309b1b-08b8-477f-bc9e-7067cf0af0b3.svg#2e309b1b-08b8-477f-bc9e-7067cf0af0b3") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW01-45Ligh";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/ae1656aa-5f8f-4905-aed0-93e667bd6e4a.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/ae1656aa-5f8f-4905-aed0-93e667bd6e4a.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/530dee22-e3c1-4e9f-bf62-c31d510d9656.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/688ab72b-4deb-4e15-a088-89166978d469.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/7816f72f-f47e-4715-8cd7-960e3723846a.svg#7816f72f-f47e-4715-8cd7-960e3723846a") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW01-55Roma";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/b7693a83-b861-4aa6-85e0-9ecf676bc4d6.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/b7693a83-b861-4aa6-85e0-9ecf676bc4d6.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/bcf54343-d033-41ee-bbd7-2b77df3fe7ba.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/b0ffdcf0-26da-47fd-8485-20e4a40d4b7d.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/da09f1f1-062a-45af-86e1-2bbdb3dd94f9.svg#da09f1f1-062a-45af-86e1-2bbdb3dd94f9") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW01-65Medi";
							font-weight: bold;
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/07fe0fec-b63f-4963-8ee1-535528b67fdb.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/07fe0fec-b63f-4963-8ee1-535528b67fdb.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/60be5c39-863e-40cb-9434-6ebafb62ab2b.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/4c6503c9-859b-4d3b-a1d5-2d42e1222415.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/36c182c6-ef98-4021-9b0d-d63122c2bbf5.svg#36c182c6-ef98-4021-9b0d-d63122c2bbf5") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW02-35Thin";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/30b6ffc3-3b64-40dd-9ff8-a3a850daf535.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/30b6ffc3-3b64-40dd-9ff8-a3a850daf535.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/775a65da-14aa-4634-be95-6724c05fd522.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/988eaaa7-5565-4f65-bb17-146b650ce9e9.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/3503a1a6-91c3-4c42-8e66-2ea7b2b57541.svg#3503a1a6-91c3-4c42-8e66-2ea7b2b57541") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW02-45Ligh";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/88fcd49a-13c7-4d0c-86b1-ad1e258bd75d.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/88fcd49a-13c7-4d0c-86b1-ad1e258bd75d.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/9a2e4855-380f-477f-950e-d98e8db54eac.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/fa82d0ee-4fbd-4cc9-bf9f-226ad1fcbae2.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/48d599a6-92b5-4d43-a4ac-8959f6971853.svg#48d599a6-92b5-4d43-a4ac-8959f6971853") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW02-55Roma";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/0b3a3fca-0fad-402b-bd38-fdcbad1ef776.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/0b3a3fca-0fad-402b-bd38-fdcbad1ef776.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/d5af76d8-a90b-4527-b3a3-182207cc3250.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/1d238354-d156-4dde-89ea-4770ef04b9f9.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/b68875cb-14a9-472e-8177-0247605124d7.svg#b68875cb-14a9-472e-8177-0247605124d7") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW02-65Medi";
							font-weight: bold;
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/55f60419-09c3-42bd-b81f-1983ff093852.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/55f60419-09c3-42bd-b81f-1983ff093852.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/5b4a262e-3342-44e2-8ad7-719998a68134.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/4a3ef5d8-cfd9-4b96-bd67-90215512f1e5.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/58ab5075-53ea-46e6-9783-cbb335665f88.svg#58ab5075-53ea-46e6-9783-cbb335665f88") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW10-35Thin";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/93b6bf6a-418e-4a8f-8f79-cb9c99ef3e32.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/93b6bf6a-418e-4a8f-8f79-cb9c99ef3e32.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/c881c21b-4148-4a11-a65d-f35e42999bc8.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/03634cf1-a9c9-4e13-b049-c90d830423d4.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/1bc99c0a-298b-46f9-b325-18b5e5169795.svg#1bc99c0a-298b-46f9-b325-18b5e5169795") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW10-45Ligh";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/5b85c7cc-6ad4-4226-83f5-9d19e2974123.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/5b85c7cc-6ad4-4226-83f5-9d19e2974123.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/835e7b4f-b524-4374-b57b-9a8fc555fd4e.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/2c694ef6-9615-473e-8cf4-d8d00c6bd973.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/3fc84193-a13f-4fe8-87f7-238748a4ac54.svg#3fc84193-a13f-4fe8-87f7-238748a4ac54") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW10-65Medi";
							font-weight: bold;
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/7092fdcc-7036-48ce-ae23-cfbc9be2e3b0.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/7092fdcc-7036-48ce-ae23-cfbc9be2e3b0.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/5b29e833-1b7a-40ab-82a5-cfd69c8650f4.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/b0298148-2d59-44d1-9ec9-1ca6bb097603.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/ae1dea8c-a953-4845-b616-74a257ba72e6.svg#ae1dea8c-a953-4845-b616-74a257ba72e6") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW10-55Roma";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/f1feaed7-6bce-400a-a07e-a893ae43a680.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/f1feaed7-6bce-400a-a07e-a893ae43a680.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/8ac9e38d-29c6-41ea-8e47-4ae4d2b1a4e1.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/4bd09087-655e-4abb-844c-dccdeb68003d.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/df234d87-eada-4058-aa80-5871e7fbe1c3.svg#df234d87-eada-4058-aa80-5871e7fbe1c3") format("svg");
						  }
				
						  .wrapper.hidden {
							display: none;
						  }
				
						  .wrapper.visible {
							display: block;
							visibility: visible;
						  }
				
						  .wrapper .desktop-top {
							position: fixed;
							top: 0;
							right: 39px;
							border-top: solid 2px #459fed;
							border-bottom-left-radius: 10px;
							border-bottom-right-radius: 10px;
							transition: height 100ms;
							cursor: pointer;
							overflow: hidden;
							color: #ffffff;
							display: block;
							font-family: wixFreemiumFontW01-55Roma, wixFreemiumFontW02-55Roma, wixFreemiumFontW10-55Roma, Helvetica Neue, Helvetica, Arial, メイリオ, meiryo, ヒラギノ角ゴ pro w3, hiragino kaku gothic pro, sans-serif;
							letter-spacing: 0.05em;
							font-size: 13px;
							z-index: 999;
						  }
				
						  .wrapper .desktop-top:hover {
							min-height: 72px;
							background-color: #43515c;
							padding-bottom: 6px;
							word-wrap: break-word;
						  }
				
						  .wrapper .desktop-top:hover>.hover1 {
							display: block;
							font-family: wixFreemiumFontW01-35Thin, wixFreemiumFontW02-35Thin, wixFreemiumFontW10-35Thin, Helvetica Neue, Helvetica, Arial, メイリオ, meiryo, ヒラギノ角ゴ pro w3, hiragino kaku gothic pro, sans-serif;
							padding-top: 4px;
						  }
				
						  .wrapper .desktop-top:hover>.arrow,
						  .wrapper .desktop-top:hover>.hover2 {
							display: inline-block;
						  }
				
						  .wrapper .desktop-top>.main {
							padding: 0 6px 0 10px;
							text-align: center;
							line-height: 26px;
							border-bottom-left-radius: 10px;
							border-bottom-right-radius: 10px;
							background-color: #20303c;
						  }
				
						  .wrapper .desktop-top>.main>.banner1,
						  .wrapper .desktop-top>.main>.wix,
						  .wrapper .desktop-top>.main>.banner2,
						  .wrapper .desktop-top>.main>.arrow {
							display: inline-block;
						  }
				
						  .wrapper .desktop-top>.main>.wix {
							fill: #fff;
							width: 28px;
							height: 14px;
							padding: 0 1px 4px 1px;
							vertical-align: middle;
						  }
				
						  .wrapper .desktop-top>.main>.wix>.dot {
							fill: #fc0;
						  }
				
						  .wrapper .desktop-top>.hover1,
						  .wrapper .desktop-top>.hover2 {
							padding-left: 14px;
							line-height: 20px;
							display: none;
						  }
				
						  .wrapper .desktop-top>.hover2 {
							color: #459fed;
							padding-right: 4px;
						  }
				
						  .wrapper .desktop-top>.arrow {
							display: none;
							fill: none;
							stroke: #459fed;
							stroke-miterlimit: 10;
							stroke-width: 2px;
							height: 10px;
							width: 6px;
							padding-bottom: 5px;
							vertical-align: bottom;
						  }
				
						  .wrapper .desktop-bottom {
							position: fixed;
							width: 100%;
							height: 40px;
							background-color: #20303c;
							bottom: 0;
							max-height: 10vh;
							color: #ffffff;
							font-size: 14px;
							display: inline-block;
							line-height: 40px;
							text-align: center;
							letter-spacing: 0.05em;
							align-items: center;
							font-family: wixFreemiumFontW01-55Roma, wixFreemiumFontW02-55Roma, wixFreemiumFontW10-55Roma, Helvetica Neue, Helvetica, Arial, メイリオ, meiryo, ヒラギノ角ゴ pro w3, hiragino kaku gothic pro, sans-serif;
							transition: background-color 150ms;
							cursor: pointer;
							z-index: 999;
						  }
				
						  .wrapper .desktop-bottom.preview {
							cursor: default;
						  }
				
						  .wrapper .desktop-bottom:not(.preview):hover {
							background-color: #43515c;
						  }
				
						  .wrapper .desktop-bottom>.contents .wix-logo {
							fill: #fff;
							width: 36px;
							vertical-align: middle;
							padding-bottom: 6px;
							height: 16px;
						  }
				
						  .wrapper .desktop-bottom>.contents .wix-logo>.dot {
							fill: #fc0;
						  }
				
						  .wrapper .desktop-bottom>.contents .com {
							color: #ffffff;
						  }
				
						  .wrapper .desktop-bottom>.contents>.arrow {
							fill: none;
							stroke: #459fed;
							stroke-miterlimit: 10;
							stroke-width: 2px;
							height: 10px;
							padding-bottom: 1px;
							vertical-align: middle;
						  }
				
						  .wrapper .desktop-bottom>.contents>.second {
							color: #459fed;
							padding: 0 5px 0 6px;
						  }
				
						  @media (orientation: landscape) and (max-width: 600px) {
							.wrapper .mobile-top.not-preview {
							  display: none;
							}
						  }
				
						  .wrapper .mobile-top {
							position: relative;
							display: block;
							height: 38px;
							top: 0px;
							width: 100%;
							font-family: wixFreemiumFontW01-65Medi, wixFreemiumFontW02-65Medi, wixFreemiumFontW10-65Medi, Helvetica Neue, Helvetica, Arial, メイリオ, meiryo, ヒラギノ角ゴ pro w3, hiragino kaku gothic pro, sans-serif;
							letter-spacing: 0.05em;
							font-size: 14px;
							color: #ffffff;
							background-color: #20303c;
							z-index: 999;
							text-align: center;
							cursor: default;
						  }
				
						  .wrapper .mobile-top.fixed-ad-mobile {
							position: fixed;
							width: 320px;
							z-index: 1000;
						  }
				
						  .wrapper .mobile-top>.first {
							display: inline-block;
							text-align: center;
							line-height: 38px;
						  }
				
						  .wrapper .mobile-top .wix-logo {
							fill: #fff;
							width: 30px;
							padding-bottom: 4px;
							vertical-align: middle;
							height: 15px;
						  }
				
						  .wrapper .mobile-top .wix-logo>.dot {
							fill: #fc0;
						  }
				
						  /* old banner*/
						  .wixAds_wrapper-old.hidden {
							display: none;
						  }
				
						  .wixAds_wrapper-old.visible {
							display: block;
						  }
				
						  .wixAds_wrapper-old .wixAdsdesktopWADTop {
							position: fixed;
							z-index: 999;
							height: 26px;
							top: 0;
							right: 50px;
							overflow: hidden;
							background-color: #404040;
							border-radius: 0 0 6px 6px;
							cursor: pointer;
							-webkit-transition: all .3s ease-in-out;
							transition: all .3s ease-in-out;
						  }
				
						  .wixAds_wrapper-old .wixAdsdesktopWADTop:hover {
							height: 97px;
							background-color: rgba(50, 50, 50, 0.8);
						  }
				
						  .wixAds_wrapper-old .wixAdsdesktopWADTop:hover .topLabel {
							background-color: #222222;
						  }
				
						  .wixAds_wrapper-old .topLabel {
							padding: 6px;
							font-size: 13px;
							line-height: 1.3em;
							color: #FFF;
							width: 100%;
							font-size: 13px;
							color: #FFF;
							font-weight: bold;
							line-height: 18px;
							text-align: justify;
							padding: 5px 10px;
						  }
				
						  .wixAds_wrapper-old .topLabel .smallMusa {
							display: inline-block;
							text-indent: -9999px;
							width: 16px;
							height: 16px;
							margin-right: 5px;
							background-image: url("//static.wixstatic.com/media/0da768_0c5ce9e2ffa442bea0b79b690223a939~mv2.png");
							background-repeat: no-repeat;
							background-position: 0% 0%;
						  }
				
						  .wixAds_wrapper-old .topLabel .smallLogo {
							display: inline-block;
							text-indent: -9999px;
							width: 29px;
							height: 16px;
							background-image: url("//static.wixstatic.com/media/0da768_0c5ce9e2ffa442bea0b79b690223a939~mv2.png");
							background-repeat: no-repeat;
							background-position: -16px top;
						  }
				
						  .wixAds_wrapper-old .topContent {
							font-size: 13px;
							line-height: 1.3em;
							color: #ffffff;
							font-weight: bold;
							line-height: 18px;
							text-align: justify;
							padding: 5px 10px;
							width: 100%;
						  }
				
						  .wixAds_wrapper-old .topContent .emphasis {
							color: #ffcc00;
							line-height: 26px;
						  }
				
						  .wixAds_wrapper-old .desktop-bottom {
							position: fixed;
							z-index: 999;
							width: 100%;
							bottom: 0;
							max-height: 10vh;
						  }
				
						  .wixAds_wrapper-old .desktop-bottom:hover .siteBanner,
						  .wixAds_wrapper-old .desktop-bottom:hover .footerLabel {
							background-color: #222222 !important;
						  }
				
						  .wixAds_wrapper-old .desktop-bottom .footerLabel {
							width: 100%;
							height: 40px;
							text-align: center;
							background-color: #404040;
							border-radius: 6px 6px 0 0;
							cursor: pointer;
						  }
				
						  .wixAds_wrapper-old .desktop-bottom .footerLabel .siteBanner {
							background-color: #404040;
							border-radius: 6px 6px 0 0;
							width: 100%;
							height: 100%;
							text-align: center;
						  }
				
						  .wixAds_wrapper-old .desktop-bottom .footerLabel .siteBanner .bigMusa {
							text-indent: -9999px;
							width: 36px;
							background-image: url("//static.wixstatic.com/media/0da768_0c5ce9e2ffa442bea0b79b690223a939~mv2.png");
							background-repeat: no-repeat;
							background-position: left bottom;
							position: relative;
							top: -19px;
						  }
				
						  .wixAds_wrapper-old .desktop-bottom .footerLabel .siteBanner .wrapper {
							padding: 5px 0;
						  }
				
						  .wixAds_wrapper-old .desktop-bottom .footerLabel .siteBanner .wrapper div {
							display: inline-block;
							height: 30px;
						  }
				
						  .wixAds_wrapper-old .desktop-bottom .footerLabel .siteBanner .txt {
							line-height: 47px;
							color: #ffffff;
							font-weight: bold;
							font-size: 15px;
						  }
				
						  .wixAds_wrapper-old .desktop-bottom .footerLabel .siteBanner .txt a {
							color: #ffffff;
						  }
				
						  .wixAds_wrapper-old .desktop-bottom .footerLabel .emphasis {
							color: #ffcc00;
							font-size: 16px;
							text-transform: uppercase;
						  }
				
						  .wixAds_wrapper-old .mobile-top {
							width: 100%;
							height: 30px;
							position: relative;
							display: block;
							text-align: center;
							background-color: #313131;
							z-index: 999;
						  }
				
						  .wixAds_wrapper-old .mobile-top .wixAdsmobileAdImg {
							height: 30px;
						  }
				
						  @media (orientation: landscape) and (max-width: 600px) {
							.wixAds_wrapper-old .mobile-top.not-preview {
							  display: none;
							}
						  }
				
						  .wixAds_wrapper-old .spacer {
							line-height: 26px;
						  }
				
						  /*the ad font is Helvetica. we don't wont users to use it in the sites, so we changed the name of the font */
						  @font-face {
							font-family: "wixFreemiumFontW01-35Thin";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/56be84de-9d60-4089-8df0-0ea6ec786b84.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/56be84de-9d60-4089-8df0-0ea6ec786b84.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/50d35bbc-dfd4-48f1-af16-cf058f69421d.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/278bef59-6be1-4800-b5ac-1f769ab47430.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/2e309b1b-08b8-477f-bc9e-7067cf0af0b3.svg#2e309b1b-08b8-477f-bc9e-7067cf0af0b3") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW01-45Ligh";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/ae1656aa-5f8f-4905-aed0-93e667bd6e4a.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/ae1656aa-5f8f-4905-aed0-93e667bd6e4a.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/530dee22-e3c1-4e9f-bf62-c31d510d9656.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/688ab72b-4deb-4e15-a088-89166978d469.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/7816f72f-f47e-4715-8cd7-960e3723846a.svg#7816f72f-f47e-4715-8cd7-960e3723846a") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW01-55Roma";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/b7693a83-b861-4aa6-85e0-9ecf676bc4d6.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/b7693a83-b861-4aa6-85e0-9ecf676bc4d6.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/bcf54343-d033-41ee-bbd7-2b77df3fe7ba.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/b0ffdcf0-26da-47fd-8485-20e4a40d4b7d.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/da09f1f1-062a-45af-86e1-2bbdb3dd94f9.svg#da09f1f1-062a-45af-86e1-2bbdb3dd94f9") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW01-65Medi";
							font-weight: bold;
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/07fe0fec-b63f-4963-8ee1-535528b67fdb.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/07fe0fec-b63f-4963-8ee1-535528b67fdb.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/60be5c39-863e-40cb-9434-6ebafb62ab2b.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/4c6503c9-859b-4d3b-a1d5-2d42e1222415.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/36c182c6-ef98-4021-9b0d-d63122c2bbf5.svg#36c182c6-ef98-4021-9b0d-d63122c2bbf5") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW02-35Thin";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/30b6ffc3-3b64-40dd-9ff8-a3a850daf535.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/30b6ffc3-3b64-40dd-9ff8-a3a850daf535.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/775a65da-14aa-4634-be95-6724c05fd522.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/988eaaa7-5565-4f65-bb17-146b650ce9e9.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/3503a1a6-91c3-4c42-8e66-2ea7b2b57541.svg#3503a1a6-91c3-4c42-8e66-2ea7b2b57541") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW02-45Ligh";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/88fcd49a-13c7-4d0c-86b1-ad1e258bd75d.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/88fcd49a-13c7-4d0c-86b1-ad1e258bd75d.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/9a2e4855-380f-477f-950e-d98e8db54eac.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/fa82d0ee-4fbd-4cc9-bf9f-226ad1fcbae2.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/48d599a6-92b5-4d43-a4ac-8959f6971853.svg#48d599a6-92b5-4d43-a4ac-8959f6971853") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW02-55Roma";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/0b3a3fca-0fad-402b-bd38-fdcbad1ef776.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/0b3a3fca-0fad-402b-bd38-fdcbad1ef776.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/d5af76d8-a90b-4527-b3a3-182207cc3250.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/1d238354-d156-4dde-89ea-4770ef04b9f9.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/b68875cb-14a9-472e-8177-0247605124d7.svg#b68875cb-14a9-472e-8177-0247605124d7") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW02-65Medi";
							font-weight: bold;
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/55f60419-09c3-42bd-b81f-1983ff093852.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/55f60419-09c3-42bd-b81f-1983ff093852.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/5b4a262e-3342-44e2-8ad7-719998a68134.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/4a3ef5d8-cfd9-4b96-bd67-90215512f1e5.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/58ab5075-53ea-46e6-9783-cbb335665f88.svg#58ab5075-53ea-46e6-9783-cbb335665f88") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW10-35Thin";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/93b6bf6a-418e-4a8f-8f79-cb9c99ef3e32.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/93b6bf6a-418e-4a8f-8f79-cb9c99ef3e32.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/c881c21b-4148-4a11-a65d-f35e42999bc8.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/03634cf1-a9c9-4e13-b049-c90d830423d4.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/1bc99c0a-298b-46f9-b325-18b5e5169795.svg#1bc99c0a-298b-46f9-b325-18b5e5169795") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW10-45Ligh";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/5b85c7cc-6ad4-4226-83f5-9d19e2974123.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/5b85c7cc-6ad4-4226-83f5-9d19e2974123.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/835e7b4f-b524-4374-b57b-9a8fc555fd4e.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/2c694ef6-9615-473e-8cf4-d8d00c6bd973.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/3fc84193-a13f-4fe8-87f7-238748a4ac54.svg#3fc84193-a13f-4fe8-87f7-238748a4ac54") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW10-65Medi";
							font-weight: bold;
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/7092fdcc-7036-48ce-ae23-cfbc9be2e3b0.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/7092fdcc-7036-48ce-ae23-cfbc9be2e3b0.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/5b29e833-1b7a-40ab-82a5-cfd69c8650f4.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/b0298148-2d59-44d1-9ec9-1ca6bb097603.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/ae1dea8c-a953-4845-b616-74a257ba72e6.svg#ae1dea8c-a953-4845-b616-74a257ba72e6") format("svg");
						  }
				
						  @font-face {
							font-family: "wixFreemiumFontW10-55Roma";
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/f1feaed7-6bce-400a-a07e-a893ae43a680.eot?#iefix");
							src: url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/f1feaed7-6bce-400a-a07e-a893ae43a680.eot?#iefix") format("eot"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/8ac9e38d-29c6-41ea-8e47-4ae4d2b1a4e1.woff") format("woff"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/4bd09087-655e-4abb-844c-dccdeb68003d.ttf") format("truetype"), url("//static.parastorage.com/services/third-party/fonts/Helvetica/Fonts/df234d87-eada-4058-aa80-5871e7fbe1c3.svg#df234d87-eada-4058-aa80-5871e7fbe1c3") format("svg");
						  }
				
						  .wix-ads-2 {
							width: 100%;
						  }
				
						  .wix-ads-2.hidden {
							display: none;
						  }
				
						  .wix-ads-2.visible {
							display: block;
							visibility: visible;
						  }
				
						  .wix-ads-2.desktop {
							z-index: 999;
							position: fixed;
							top: 0;
						  }
				
						  .wix-ads-2.mobile {
							z-index: 999;
						  }
				
						  .wix-ads-2 .rtl {
							direction: rtl;
						  }
				
						  .wix-ads-2 .ltr {
							direction: ltr;
						  }
				
						  .wix-ads-2 .desktop-top {
							height: 50px;
							box-sizing: border-box;
							background: #eff1f2;
							display: flex;
							justify-content: center;
							align-items: center;
							border-bottom: 3px solid #a0138e;
							width: 100%;
						  }
				
						  .wix-ads-2 .desktop-top.overlay {
							background-color: #ff0000;
							border: none;
						  }
				
						  .wix-ads-2 .desktop-top.preview {
							cursor: default;
						  }
				
						  .wix-ads-2 .desktop-top>.contents {
							display: flex;
							align-items: center;
						  }
				
						  .wix-ads-2 .desktop-top>.contents .text {
							font-family: wixFreemiumFontW01-65Medi, wixFreemiumFontW02-65Medi, wixFreemiumFontW10-65Medi, Helvetica Neue, Helvetica, Arial, メイリオ, meiryo, ヒラギノ角ゴ pro w3, hiragino kaku gothic pro, sans-serif;
							font-size: 14px;
							color: #20303C;
							line-height: 24px;
							flex-shrink: 0;
						  }
				
						  .wix-ads-2 .desktop-top>.contents .text .wix-logo {
							fill: #20303C;
							width: 36px;
							vertical-align: middle;
							padding-bottom: 6px;
							height: 16px;
						  }
				
						  .wix-ads-2 .desktop-top>.contents .text .wix-logo>.dot {
							fill: #fc0;
						  }
				
						  .wix-ads-2 .desktop-top>.contents .text .com {
							color: #20303C;
						  }
				
						  .wix-ads-2 .desktop-top>.contents .button {
							font-family: wixFreemiumFontW01-65Medi, wixFreemiumFontW02-65Medi, wixFreemiumFontW10-65Medi, Helvetica Neue, Helvetica, Arial, メイリオ, meiryo, ヒラギノ角ゴ pro w3, hiragino kaku gothic pro, sans-serif;
							font-size: 14px;
							color: #a0138e;
							border: 1px solid #a0138e;
							display: inline-flex;
							width: 112px;
							height: 35px;
							justify-content: center;
							align-items: center;
							border-radius: 17px;
							flex-shrink: 0;
							text-align: center;
						  }
				
						  .wix-ads-2 .desktop-top>.contents .button.ltr {
							margin-left: 6px;
						  }
				
						  .wix-ads-2 .desktop-top>.contents .button.rtl {
							margin-right: 6px;
						  }
				
						  .wix-ads-2 .desktop-top:not(.overlay):hover {
							cursor: pointer;
							background: #fff;
						  }
				
						  .wix-ads-2 .desktop-top:not(.overlay):hover .button {
							color: #fff;
							background-color: #a0138e;
						  }
				
						  .wix-ads-2 .mobile-top {
							height: 38px;
							box-sizing: border-box;
							background: #eff1f2;
							display: flex;
							justify-content: center;
							align-items: center;
							border-bottom: 3px solid #a0138e;
							width: 100%;
							position: relative;
							top: 0;
							z-index: 1;
						  }
				
						  .wix-ads-2 .mobile-top.overlay {
							background-color: #ff0000;
							border: none;
						  }
				
						  .wix-ads-2 .mobile-top.fixed-ad-mobile {
							position: fixed;
							width: 320px;
							z-index: 1000;
						  }
				
						  .wix-ads-2 .mobile-top .content {
							font-family: wixFreemiumFontW01-65Medi, wixFreemiumFontW02-65Medi, wixFreemiumFontW10-65Medi, Helvetica Neue, Helvetica, Arial, メイリオ, meiryo, ヒラギノ角ゴ pro w3, hiragino kaku gothic pro, sans-serif;
							font-size: 14px;
							color: #20303C;
							line-height: 10px;
							letter-spacing: 0.05em;
							align-items: baseline;
							display: flex;
						  }
				
						  .wix-ads-2 .mobile-top .content .wix-logo {
							fill: #20303C;
							vertical-align: middle;
							padding: 0 5px;
							height: 10.5px;
						  }
				
						  .wix-ads-2 .mobile-top .content .wix-logo>.dot {
							fill: #fc0;
						  }
				
						  .wix-ads-2 .mobile-top.one-app-banner .content {
							font-family: wixFreemiumFontW01-55Roma, wixFreemiumFontW02-55Roma, wixFreemiumFontW10-55Roma, Helvetica Neue, Helvetica, Arial, メイリオ, meiryo, ヒラギノ角ゴ pro w3, hiragino kaku gothic pro, sans-serif;
							font-size: 16px;
							color: #1c1c1c;
							line-height: 38px;
						  }
				
						  .wix-ads-2 .mobile-top.one-app-banner .wix-logo {
							padding: 0 2px 0 6px;
						  }
				
						  .wix-ads-2 .mobile-top.one-app-banner .download-logo {
							height: 22px;
							align-self: center;
							padding-left: 10px;
							margin-left: -4px;
						  }
				
						  /*# sourceMappingURL=wix-freemuim-css-entry.css.map */
						</style>
					  </div>
					  <div id="aspectCompsContainer" class="siteAspectsContainer">
						<div style="position:absolute" id="popoverLayer"></div>
					  </div>
					  <div id="SCROLL_TO_BOTTOM" tabindex="-1" aria-label="bottom of page" role="region" style="height:0"></div>
					  <script id="partiallyVisibleBeat">
						if (window.wixBiSession) {
						  wixBiSession.isUsingMesh = true;
						  if (wixBiSession.sendBeat) {
							wixBiSession.sendBeat(12, 'Partially visible', '&pid=c1dmp');
						  }
				
						  if (window.requestCloseWelcomeScreen) {
							window.requestCloseWelcomeScreen();
						  }
				
						}
					  </script>
					</div>
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
