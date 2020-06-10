<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/BookNet/css/w3.css">
<script type="text/javascript" src="/BookNet/js/jquery-3.5.0.min.js"></script>
<style>
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<div id="contents-wrap">
        <div style="width: 900px; margin: 15px auto; text-align: center;">
        	<div><h2>${pid} 의 팔로워</h2></div>
            <c:forEach var="fal" items="${LIST}">
                <div class="div_activity new-act">
                    <div class="prof_div">
                        <img src="${fal.sloc}" />
                    </div>
                    <div class="div_act">
                        <div class="ala_cont" style="font-size: 16px;" id="${fal.id}">
                        	${fal.id}
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>