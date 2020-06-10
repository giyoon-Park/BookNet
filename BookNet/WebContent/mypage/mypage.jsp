<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/BookNet/css/w3.css" />
<script type="text/javascript" src="/BookNet/js/jquery-3.5.0.min.js"></script>
<style>
	.e-d-img {
		margin: auto auto;
		background-position: -50px -370px;
		height: 25px;
		width: 25px;
		background-image:
			url(https://www.instagram.com/static/bundles/es6/sprite_glyphs_c14ffe44a4f6.png/c14ffe44a4f6.png);
	}

	.e-d-img:hover { /* img 마우스 오버시*/
		cursor: pointer;
		transform: scale(1.1);
	}

	.like-img {
		margin: auto auto;
		background-position: -208px -370px;
		height: 25px;
		width: 25px;
		background-image:
			url(https://www.instagram.com/static/bundles/es6/sprite_glyphs_c14ffe44a4f6.png/c14ffe44a4f6.png);
	}

	.like-img:hover { /* img 마우스 오버시*/
		cursor: pointer;
		transform: scale(1.1);
	}
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<div style="width: 900px;">
		<div class="w3-col w3-center">
			<h1>My Page</h1>
		</div>
		<div class="w3-col w3-border w3-margin-top">
			<div class="w3-col w3-border w3-margin-top">
				<div class="w3-col m3 w3-border">
					<img class="w3-col" style="height: 298px;" src="${INFO.save_loc}" />
					<div class="w3-col">
						<h3 class="w3-col w3-center">
							<label for="cntpost">게시글 수 : </label>
							<a id="cntpost" href="/BookNet/mypage/mypage.cls?id=${INFO.id}">${CNTPOST}</a>
						</h3>
						<h3 class="w3-col w3-center">
							<label for="cntfallow">팔로우 수 : </label>
							<a id="cntfallow" href="/BookNet/mypage/fallow.cls?id=${INFO.id}">${CNTFALLOW}</a>
						</h3>
						<h3 class="w3-col w3-center">
							<label for="cntfallower">팔로워 수 : </label>
							<a id="cntfallower" href="/BookNet/mypage/fallower.cls?id=${INFO.id}">${CNTFALLOWER}</a>
						</h3>
					</div>
				</div>
				<div class="w3-col m1"><p></p></div>
				<div class="w3-col m8 w3-border" style="padding-right: 10px;">
					<div class="w3-col" style="margin-bottom: 0px;">
						<c:if test="${INFO.isinflu eq 'Y'}">
							<img class="w3-col m1 w3-margin-top" style="width: 32px; height: 32px; margin-bottom: 0px;" src="https://img.icons8.com/windows/32/000000/instagram-check-mark.png" />
						</c:if>
						<h2 class="w3-col m9" style="margin-bottom: 0px;">${INFO.id} 프로필</h2>
					</div>
					<div class="w3-border" style="max-height: 243.2px; border-radius: 5px; overflow: auto; padding-left: 3px;">
						<h6 style="margin-bottom: 0px;">닉네임</h6>
						<h2 style="margin-top: 0px; margin-left: 5px;">${INFO.nickname}</h2>
						<c:if test="${INFO.genshow eq 'Y'}">
							<h6 style="margin-bottom: 0px;">성별</h6>
							<h2 style="margin-top: 0px; margin-left: 5px;">${INFO.gen}</h2>
						</c:if>
						<c:if test="${INFO.birthshow eq 'Y'}">
							<h6 style="margin-bottom: 0px;">생일</h6>
							<h2 style="margin-top: 0px; margin-left: 5px;">${INFO.birthdate}</h2>
						</c:if>
						<c:if test="${INFO.intershow eq 'Y'}">
							<h6 style="margin-bottom: 0px;">관심분야</h6>
							<h2 style="margin-top: 0px; margin-left: 5px;">${INFO.interest}</h2>
						</c:if>
						<h6 style="margin-bottom: 0px;">한줄 소개</h6>
						<h2 style="margin-top: 0px; margin-left: 5px;">${INFO.describe}</h2>
					</div>
					<c:if test="${SID eq INFO.id}">
						<div class="w3-col m10" style="margin: 0px;"><p></p></div>
						<div class="w3-col m2" style="margin-right: 0px; height: 44.8px;">
							<h6 class="w3-right-align" style="margin-bottom: 0px; margin-top: 3px;">
								<a style="margin-bottom: 0px;" href="/BookNet/member/editMemInfo.cls">정보수정</a>
							</h6>
						</div>
						<div style="margin-top: 25px; margin-bottom: 0px;">
							<h2 style="margin-bottom: 0px;">
								<a href="/BookNet/alarm/alarmPage.cls">알람</a>
							</h2>
						</div>
						<div class="w3-border" style="height: 183px; border-radius: 5px; overflow: auto;">
							<c:forEach begin="0" end="5" var="alarm" items="${ALARM}">
								<div class="w3-padding" id="${alarm.pno}">
									<c:if test="${alarm.type eq 'C'}">
										<div>
											<h5>
												<a href="/BookNet/mypage/mypage.cls?id=${alarm.id}" id="${alarm.id}">${alarm.id}</a>님이 <a href="" id="${alarm.bname}">${alarm.bname}</a> 게시글에 댓글을 달았습니다.
											</h5>
										</div>
									</c:if>
									<c:if test="${alarm.type eq 'L'}">
										<div>
											<h5>
												<a href="/BookNet/mypage/mypage.cls?id=${alarm.id}" id="${alarm.id}">${alarm.id}</a>님이 <a href="" id="${alarm.bname}">${alarm.bname}</a> 게시글에 댓글을 달았습니다.
											</h5>
										</div>
									</c:if>
									<c:if test="${alarm.type eq 'F'}">
										<div>
											<h5>
												<a href="/BookNet/mypage/mypage.cls?id=${alarm.id}" id="${alarm.id}">${alarm.id}</a>님이 <a href="" id="${alarm.bname}">${alarm.bname}</a> 게시글에 댓글을 달았습니다.
											</h5>
										</div>
									</c:if>
									<div style="text-align: right;">
										${alarm.extime}
									</div>
								</div>
							</c:forEach>
						</div>
					</c:if>
					<div style="margin-top: 25px; margin-bottom: 0px;">
						<h2 style="margin-bottom: 0px;">
							<a href="" >${INFO.id}가 좋아하는 글</a>
						</h2>
					</div>
					<div class="w3-border" style="height: 183px; border-radius: 5px; overflow: auto;">
						<c:forEach begin="1" end="5" var="like" items="${LIKE}">
							<div class="w3-col w3-border" style="height: 64px;" id="${like.pno}">
								<div class="w3-col m1 w3-border">
									<img src="${like.smallimg}" />
								</div>
								<div class="w3-col m9">

								</div>
								<div class="w3-col m2 w3-right-align" style="margin-top: 0px;">
									<span class="like-img"></span>
									<c:if test="${like.id eq SID}">
										<span class="e-d-img"></span>
									</c:if>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>