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
						<h2 class="w3-col m9" style="margin-bottom: 0px;">${INFO.id} 프로필 </h2>
					</div>
					<div class="w3-border" style="max-height: 243.2px; border-radius: 5px; overflow: auto; padding-left: 3px;">
						<h5>닉네임</h5>
						<h4>${INFO.nickname}</h4>
						<c:if test="${INFO.genshow eq 'Y'}">
							<h5>성별</h5>
							<h4>${INFO.gen}</h4>
						</c:if>
						<c:if test="${INFO.birthshow eq 'Y'}">
							<h5>생일</h5>
							<h4>${INFO.birthdate}</h4>
						</c:if>
						<c:if test="${INFO.intershow eq 'Y'}">
							<h5>관심분야</h5>
							<h4>${INFO.interest}</h4>
						</c:if>
						<h5>한줄 소개</h5>
						<h4>${INFO.describe}</h4>
					</div>
					<c:if test="${SID eq INFO.id}">
						<div class="w3-col m10" style="margin: 0px;"><p></p></div>
						<div class="w3-col m2" style="margin-right: 0px; height: 44.8px;">
							<h6 class="w3-right-align" style="margin-bottom: 0px; margin-top: 3px;">
								<a style="margin-bottom: 0px;" href="/BookNet/member/editMemInfo.cls">정보수정</a>
							</h6>
						</div>
						<div style="margin-top: 25px; margin-bottom: 0px;">
							<h2 style="margin-bottom: 0px;">알람</h2>
						</div>
						<div class="w3-border" style="height: 260px; border-radius: 5px; overflow: auto; padding-left: 3px;">
							<c:forEach begin="0" end="4" items="${ALARM}">
								
							</c:forEach>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</body>
</html>