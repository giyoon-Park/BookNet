<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="이 문서는 모든 페이지가 갖춰야할 상단(header),하단(footer) 및 전체 문서의 사이즈를 고정시킨 페이지입니다." %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레이아웃 검사</title>
</head>
<body>
	<div>
		<jsp:include page="./headerLayout.jsp"/>
	</div>
	<div>
		<jsp:include page="./mainLayout.jsp"/>
	</div>
	<div>
		<jsp:include page="./footerLayout.jsp"/>
	</div>
</body>
</html>