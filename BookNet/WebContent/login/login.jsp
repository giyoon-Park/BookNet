<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0079)https://nid.naver.com/nidlogin.login?mode=form&url=https%3A%2F%2Fwww.naver.com# -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>로그인페이지</title>
<link rel="stylesheet" type="text/css" href="../css/w_20200211.css">
</head>
<body>
	<div>

		<!-- header -->
		<div id="header">
			<h1>
				<a href="http://www.naver.com/" class="sp h_logo"></a>
			</h1>
		</div>
		<!-- //header -->
		<!-- container -->
		<div id="container">
			<!-- content -->
			<div id="content">
				<form>
					<fieldset class="login_form">
						<legend class="blind">로그인</legend>
						<div class="id_area">
							<div class="input_row" id="id_area">
								<span class="input_box"> <label for="id"
									id="label_id_area" class="lbl" style="display: block;">아이디</label>
									<input type="text" id="id" name="id" placeholder="아이디"
									class="int" maxlength="41" value="">
								</span>
							</div>
						</div>
						<div class="pw_area">
							<div class="input_row" id="pw_area">
								<span class="input_box"> <label for="pw"
									id="label_pw_area" class="lbl">비밀번호</label> <input
									type="password" id="pw" name="pw" placeholder="비밀번호"
									class="int" maxlength="16">
								</span>
							</div>
						</div>

						<input type="submit" title="로그인" alt="로그인" value="로그인"
							class="btn_global" id="log.login">
				</form>

				<!-- 아이디, 비번, 회원가입-->
				<div class="find_info">
					<a target="_blank" id="idinquiry">아이디 찾기</a> <span class="bar"
						aria-hidden="true">|</span> <a target="_blank" id="pwinquiry">비밀번호
						찾기</a> <span class="bar" aria-hidden="true">|</span> <a
						target="_blank" id="join">회원가입</a>
				</div>
			</div>
			<!-- //content -->
		</div>
		<!-- //container -->
	</div>
</body>
</html>