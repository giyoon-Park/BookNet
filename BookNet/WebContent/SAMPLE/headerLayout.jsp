<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header form</title>
<link rel="stylesheet" href="../css/always.css">
<style>
	#header-wrap {position: fixed; top: 0px;width: 100%; margin: 0 auto; background-color: #ffff}
	.header {width: 900px; height: 50px; margin: 0 auto;}
	.logobox {float: left; display: inline-block; width: 321px; height: 50px;
	border: dashed 1px gray; line-height: 50px;}
	.searchbox {display: inline-block; width: 233px; height: 35px; margin: 0 10px;
	padding-top: 8px; line-height: 35px; text-align: center;}
	.searchinput {box-sizing: border-box; width: 100%; height: 100%; padding: 7px; font-size: 16px;}
	.iconsbox {float: right; display: inline-block; width: 322px; height: 50px; border: dashed 1px blue;
	line-height: 50px; text-align: right;}
</style>
</head>
<body>
	<div>
		<div id="header-wrap">
			<div class="header">
				<div class="logobox">place for Logo</div>
				<div class="searchbox">
					<input class="searchinput" type="text" placeholder="search"/>
				</div>
				<div class="iconsbox">place for icons</div>
			</div>
		</div>
	</div>
</body>
</html>