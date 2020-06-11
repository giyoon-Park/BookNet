<!-- 
작성자: 이명환
작성일: 20.05.25
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원용 메인페이지</title>
<link rel="stylesheet" href="/BookNet/css/V2Join.css">
<script type="text/javascript" src="/BookNet/js/jquery-3.5.0.min.js"></script>
<style>
</style>
<script type="text/javascript">
	$(document).ready(function(){
		var cert = '';
		
		$('#mailUtil').click(function(){
			$('#frm').attr('action', '/BookNet/ajax/mail.cls');
			var mail = $('#mail').val();
			
			if(mail == ''){
				alert('이메일을 입력해주세요');
				return
			}
			$.ajax({
				url: '/BookNet/ajax/mail.cls',
				type: 'post',
				dataType: 'json',
				data:{
					'mail': mail
				},
				success: function(obj){
					alert('인증번호가 발송되었습니다. 이메일을 확인해주세요.');
					cert = obj.tno;
					
				},
				error: function(){
					alert('통신에러');
				}
			});
			
		});
		
		$('#btnJoin').click(function(){
			var id = $('#id').val();
			var pw = $('#pw').val();
			var pswd2 = $('#pswd2').val();
			var name = $('#name').val();
			var nickname = $('#nickname').val();
			var yy = $('#yy').val();
			var mm = $('#mm').val();
			var dd = $('#dd').val();
			var gen = $('#gen').val();
			var mail = $('#mail').val();
			var tel = $('#tel').val();
			var cert_no = $('#cert_no').val();
			var interest = $('#interest').val();
			var describe = $('#describe').val();
			
			if(id == ''){
				alert('아이디를 입력해주세요');
				$('#id').focus();
				return;
			}
			if(pw == ''){
				alert('비밀번호를 입력해주세요');
				$('#pw').focus();
				return;
			}
			if(pw != pswd2){
				alert('비밀번호가 일치하지 않습니다. 비밀번호를 확인해주세요');
				$('#pswd2').val('');
				$('#pswd2').focus();
				return;
			}
			if(name == ''){
				alert('이름을 입력해주세요');
				$('#name').focus();
				return;
			}
			if(nickname = ''){
				$('#nickname').val('-');
			}
			if(yy == ''){
				alert('생년월일을 입력해주세요');
				$('#yy').focus();
				return;
			}
			if(mm == ''){
				alert('생년월일을 입력해주세요');
				$('#mm').focus();
				return;
			}
			if(dd == ''){
				alert('생년월일을 입력해주세요');
				$('#dd').focus();
				return;
			}
			if(gen == ''){
				alert('성별을 선택해주세요');
				$('#gen').focus();
				return;
			}
			if(mail == ''){
				alert('이메일을 입력해주세요');
				$('#mail').focus();
				return;
			}
			if(cert != cert_no){
				alert('인증번호가 일치하지 않습니다');
				return;
			}
			if(tel == ''){
				alert('휴대전화를 입력해주세요');
				$('#tel').focus();
				return;
			}
			if(interest == ''){
				$('#interest').val('-');
			}
			if(describe == ''){
				$('#describe').val('-');
			}
			
			$('#join_form').submit();
		});
	});
</script>
</head>
<body>
<!-- header -->
<div id="header" class="join_membership" role="banner">
    <h1><a href="/BookNet/main/non.cls" style="width: 100%; height: auto; margin: 0 auto; color: rgb(19, 16, 13); font-size: 50px;">PageTurner</a></h1>
</div>
<!-- // header -->

<form id="join_form" method="post" action="/BookNet/member/joinProc.cls">
    <input type="hidden" id="token_sjoin" name="token_sjoin" value="CrMVbMuUqJxRkOD4">
    <input type="hidden" id="encPswd" name="encPswd" value="">
    <input type="hidden" id="encKey" name="encKey" value="">
    <input type="hidden" id="birthday" name="birthday" value="">
    <input type="hidden" id="joinMode" name="joinMode" value="unreal">
    <input type="hidden" id="pbirthday" name="pbirthday" value="">
    <input type="hidden" id="ipinFlag" name="ipinFlag" value="">
    <input type="hidden" id="nid_kb2" name="nid_kb2" value="">

    <!-- container -->
    <div id="container" role="main">
        <div id="content">
            <!-- tg-text=title -->
            <h2 class="blind">네이버 회원가입</h2>
            <div class="join_content">
                <!-- 아이디, 비밀번호 입력 -->
                <div class="row_group">
                    <div class="join_row">
                        <h3 class="join_title"><label for="id">아이디</label></h3>
                        <span class="ps_box int_id">
							<input type="text" id="id" name="id" class="int" title="ID" maxlength="20">
                        <span class="error_next_box" id="idMsg" style="display:none" aria-live="assertive"></span>
                    </div>

                    <div class="join_row">
                        <h3 class="join_title"><label for="pw">비밀번호</label></h3>
                        <span class="ps_box int_pass" id="pswd1Img">
							<input type="password" id="pw" name="pw" class="int" title="비밀번호 입력" aria-describedby="pswd1Msg" maxlength="20">
                            <span class="lbl"><span id="pswd1Span" class="step_txt"></span></span>
						</span>
                        <span class="error_next_box" id="pswd1Msg" style="display:none" aria-live="assertive">5~12자의 영문 소문자, 숫자와 특수기호(_)만 사용 가능합니다.</span>

                        <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                        <span class="ps_box int_pass_check" id="pswd2Img">
							<input type="password" id="pswd2" name="pswd2" class="int" title="비밀번호 재확인 입력" aria-describedby="pswd2Blind" maxlength="20">
							<span id="pswd2Blind" class="wa_blind">설정하려는 비밀번호가 맞는지 확인하기 위해 다시 입력 해주세요.</span>
						</span>
                        <span class="error_next_box" id="pswd2Msg" style="display:none" aria-live="assertive"></span>
                    </div>
                </div>
                <!-- // 아이디, 비밀번호 입력 -->

                <!-- 이름, 생년월일 입력 -->
                <div class="row_group">

                    <!-- lang = ko_KR -->
                    <div class="join_row">
                        <h3 class="join_title"><label for="name">이름</label></h3>
                        <span class="ps_box box_right_space">
							<input type="text" id="name" name="name" title="이름" class="int" maxlength="40">
						</span>
                        <span class="error_next_box" id="nameMsg" style="display:none" aria-live="assertive"></span>
                    </div>
                    <div class="join_row">
                        <h3 class="join_title"><label for="nickname">닉네임<span class="terms_choice">(선택)</span></label></h3>
                        <span class="ps_box box_right_space">
							<input type="text" id="nickname" name="nickname" title="닉네임" class="int" maxlength="40">
						</span>
                        <span class="error_next_box" id="nameMsg" style="display:none" aria-live="assertive"></span>
                    </div>
                    <!-- lang = ko_KR -->

                    <div class="join_row join_birthday">
                        <h3 class="join_title"><label for="yy">생년월일</label></h3>
                        <div class="bir_wrap">
                            <div class="bir_yy">
								<span class="ps_box">
									<input type="text" id="yy" name="yy" placeholder="년(4자)" aria-label="년(4자)" class="int" maxlength="4">
								</span>
                            </div>
                            <div class="bir_mm">
								<span class="ps_box">
									<select id="mm" name="mm" class="sel" aria-label="월">
										<option value="">월</option>
										  	 			<option value="01">
                                                            1
                                                        </option>
										  	 			<option value="02">
                                                            2
                                                        </option>
										  	 			<option value="03">
                                                            3
                                                        </option>
										  	 			<option value="04">
                                                            4
                                                        </option>
										  	 			<option value="05">
                                                            5
                                                        </option>
										  	 			<option value="06">
                                                            6
                                                        </option>
										  	 			<option value="07">
                                                            7
                                                        </option>
										  	 			<option value="08">
                                                            8
                                                        </option>
										  	 			<option value="09">
                                                            9
                                                        </option>
										  	 			<option value="10">
                                                            10
                                                        </option>
										  	 			<option value="11">
                                                            11
                                                        </option>
										  	 			<option value="12">
                                                            12
                                                        </option>
									</select>
								</span>
                            </div>
                            <div class=" bir_dd">
								<span class="ps_box">
									<input type="text" id="dd" name="dd" placeholder="일" aria-label="일" class="int" maxlength="2">
									<label for="dd" class="lbl"></label>
								</span>
                            </div>
                        </div>
                        <span class="error_next_box" id="birthdayMsg" style="display:none" aria-live="assertive"></span>
                    </div>

                    <div class="join_row join_sex">
                        <h3 class="join_title"><label for="gen">성별</label></h3>
                        <div class="ps_box gender_code">
                            <select id="gen" name="gen" class="sel" aria-label="성별">
                                <option value="" selected="">성별</option>
                                        <option value="M">남자</option>
                                        <option value="F">여자</option>
                            </select>
                        </div>
                    </div>
                    <span class="error_next_box" id="genderMsg" style="display:none" aria-live="assertive"></span>

                    <div class="join_row join_email">
                        <h3 class="join_title"><label for="email">본인 확인 이메일</label></h3>
                        <span class="ps_box int_email box_right_space">
							<input type="text" id="mail" name="mail" aria-label="선택입력" class="int" maxlength="100">
						</span>
                        <div class="btn_area">
                    		<button type="button" id="mailUtil" class="btn_type btn_primary" style="background-color: black;"><span>메일로 인증번호 받기</span></button>
                		</div>
                        <span class="ps_box int_email box_right_space">
							<input type="text" id="cert_no" name="cert_no" placeholder="인증번호" aria-label="인증번호" class="int" maxlength="50">
						</span>
                    </div>
                    <span class="error_next_box" id="emailMsg" style="display:none" aria-live="assertive"></span>
                </div>
                <!-- // 이름, 생년월일 입력 -->

                <!-- 휴대전화 번호, 인증번호 입력 -->
                <div class="join_row join_mobile" id="mobDiv">
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <div class="ps_box country_code">
                        <select id="nationNo" name="nationNo" class="sel" aria-label="전화번호 입력">
                                        <option value="233">
                                            가나 +233
                                        <option value="592">
                                            가이아나 +592
                                        </option>
                                        <option value="220">
                                            감비아 +220
                                        </option>
                                        <option value="502">
                                            과테말라 +502
                                        </option>
                                        <option value="1671">
                                            괌 +1 671
                                        </option>
                                        <option value="1473">
                                            그레나다 +1 473
                                        </option>
                                        <option value="30">
                                            그리스 +30
                                        </option>
                                        <option value="224">
                                            기니 +224
                                        </option>
                                        <option value="245">
                                            기니비사우 +245
                                        </option>
                                        <option value="264">
                                            나미비아 +264
                                        </option>
                                        <option value="674">
                                            나우루 +674
                                        </option>
                                        <option value="234">
                                            나이지리아 +234
                                        </option>
                                        <option value="672">
                                            남극,오스트레일리아의외 +672
                                        </option>
                                        <option value="27">
                                            남아프리카공화국 +27
                                        </option>
                                        <option value="31">
                                            네덜란드 +31
                                        </option>
                                        <option value="599">
                                            네덜란드령보네르 +599
                                        </option>
                                        <option value="297">
                                            네덜란드령아루바 +297
                                        </option>
                                        <option value="977">
                                            네팔 +977
                                        </option>
                                        <option value="47">
                                            노르웨이 +47
                                        </option>
                                        <option value="64">
                                            뉴질랜드 +64
                                        </option>
                                        <option value="683">
                                            뉴질랜드령니우에 +683
                                        </option>
                                        <option value="690">
                                            뉴질랜드령토켈라우제도 +690
                                        </option>
                                        <option value="227">
                                            니제르 +227
                                        </option>
                                        <option value="505">
                                            니카라과 +505
                                        </option>
                                        <option value="82" selected="">
                                            대한민국 +82
                                        </option>
                                        <option value="45">
                                            덴마크 +45
                                        </option>
                                        <option value="299">
                                            덴마크령그린란드 +299
                                        </option>
                                        <option value="298">
                                            덴마크령페로제도 +298
                                        </option>
                                        <option value="1809">
                                            도미니카공화국 +1 809
                                        </option>
                                        <option value="1829">
                                            도미니카공화국 2 +1 829
                                        </option>
                                        <option value="1849">
                                            도미니카공화국 3 +1 849
                                        </option>
                                        <option value="49">
                                            독일 +49
                                        </option>
                                        <option value="670">
                                            동티모르 +670
                                        </option>
                                        <option value="856">
                                            라오스 +856
                                        </option>
                                        <option value="231">
                                            라이베리아 +231
                                        </option>
                                        <option value="371">
                                            라트비아 +371
                                        </option>
                                        <option value="7">
                                            러시아/카자흐스탄 +7
                                        </option>
                                        <option value="961">
                                            레바논 +961
                                        </option>
                                        <option value="266">
                                            레소토 +266
                                        </option>
                                        <option value="40">
                                            루마니아 +40
                                        </option>
                                        <option value="352">
                                            룩셈부르크 +352
                                        </option>
                                        <option value="250">
                                            르완다 +250
                                        </option>
                                        <option value="218">
                                            리비아 +218
                                        </option>
                                        <option value="370">
                                            리투아니아 +370
                                        </option>
                                        <option value="423">
                                            리히텐슈타인 +423
                                        </option>
                                        <option value="261">
                                            마다가스카르 +261
                                        </option>
                                        <option value="692">
                                            마셜제도공화국 +692
                                        </option>
                                        <option value="691">
                                            마이크로네시아연방 +691
                                        </option>
                                        <option value="853">
                                            마카오 +853
                                        </option>
                                        <option value="389">
                                            마케도니아공화국 +389
                                        </option>
                                        <option value="265">
                                            말라위 +265
                                        </option>
                                        <option value="60">
                                            말레이시아 +60
                                        </option>
                                        <option value="223">
                                            말리 +223
                                        </option>
                                        <option value="52">
                                            멕시코 +52
                                        </option>
                                        <option value="377">
                                            모나코 +377
                                        </option>
                                        <option value="212">
                                            모로코 +212
                                        </option>
                                        <option value="230">
                                            모리셔스 +230
                                        </option>
                                        <option value="222">
                                            모리타니아 +222
                                        </option>
                                        <option value="258">
                                            모잠비크 +258
                                        </option>
                                        <option value="382">
                                            몬테네그로 +382
                                        </option>
                                        <option value="373">
                                            몰도바 +373
                                        </option>
                                        <option value="960">
                                            몰디브 +960
                                        </option>
                                        <option value="356">
                                            몰타 +356
                                        </option>
                                        <option value="976">
                                            몽골 +976
                                        </option>
                                        <option value="1">
                                            미국/캐나다 +1
                                        </option>
                                        <option value="1670">
                                            미국령북마리아나제도 +1 670
                                        </option>
                                        <option value="95">
                                            미얀마 +95
                                        </option>
                                        <option value="678">
                                            바누아투 +678
                                        </option>
                                        <option value="973">
                                            바레인 +973
                                        </option>
                                        <option value="1246">
                                            바베이도스 +1 246
                                        </option>
                                        <option value="1242">
                                            바하마 +1 242
                                        </option>
                                        <option value="880">
                                            방글라데시 +880
                                        </option>
                                        <option value="229">
                                            베냉 +229
                                        </option>
                                        <option value="58">
                                            베네수엘라 +58
                                        </option>
                                        <option value="84">
                                            베트남 +84
                                        </option>
                                        <option value="32">
                                            벨기에 +32
                                        </option>
                                        <option value="375">
                                            벨라루스 +375
                                        </option>
                                        <option value="501">
                                            벨리즈 +501
                                        </option>
                                        <option value="387">
                                            보스니아헤르체고비나 +387
                                        </option>
                                        <option value="267">
                                            보츠와나 +267
                                        </option>
                                        <option value="591">
                                            볼리비아 +591
                                        </option>
                                        <option value="257">
                                            부룬디 +257
                                        </option>
                                        <option value="226">
                                            부르키나파소 +226
                                        </option>
                                        <option value="975">
                                            부탄 +975
                                        </option>
                                        <option value="359">
                                            불가리아 +359
                                        </option>
                                        <option value="55">
                                            브라질 +55
                                        </option>
                                        <option value="673">
                                            브루나이 +673
                                        </option>
                                        <option value="685">
                                            사모아 +685
                                        </option>
                                        <option value="966">
                                            사우디아라비아 +966
                                        </option>
                                        <option value="378">
                                            산마리노 +378
                                        </option>
                                        <option value="239">
                                            상투메프린시페 +239
                                        </option>
                                        <option value="221">
                                            세네갈 +221
                                        </option>
                                        <option value="381">
                                            세르비아 +381
                                        </option>
                                        <option value="248">
                                            세이셀 +248
                                        </option>
                                        <option value="1784">
                                            세인트빈센트그레나딘 +1 784
                                        </option>
                                        <option value="252">
                                            소말리아 +252
                                        </option>
                                        <option value="677">
                                            솔로몬제도 +677
                                        </option>
                                        <option value="249">
                                            수단 +249
                                        </option>
                                        <option value="597">
                                            수리남 +597
                                        </option>
                                        <option value="94">
                                            스리랑카 +94
                                        </option>
                                        <option value="268">
                                            스와질랜드 +268
                                        </option>
                                        <option value="46">
                                            스웨덴 +46
                                        </option>
                                        <option value="41">
                                            스위스 +41
                                        </option>
                                        <option value="34">
                                            스페인 +34
                                        </option>
                                        <option value="421">
                                            슬로바키아 +421
                                        </option>
                                        <option value="386">
                                            슬로베니아 +386
                                        </option>
                                        <option value="963">
                                            시리아 +963
                                        </option>
                                        <option value="232">
                                            시에라리온 +232
                                        </option>
                                        <option value="65">
                                            싱가포르 +65
                                        </option>
                                        <option value="971">
                                            아랍에미리트 +971
                                        </option>
                                        <option value="374">
                                            아르메니아 +374
                                        </option>
                                        <option value="54">
                                            아르헨티나 +54
                                        </option>
                                        <option value="1684">
                                            아메리칸사모아 +1 684
                                        </option>
                                        <option value="354">
                                            아이슬란드 +354
                                        </option>
                                        <option value="509">
                                            아이티 +509
                                        </option>
                                        <option value="353">
                                            아일랜드 +353
                                        </option>
                                        <option value="994">
                                            아제르바이잔 +994
                                        </option>
                                        <option value="93">
                                            아프가니스탄 +93
                                        </option>
                                        <option value="376">
                                            안도라 +376
                                        </option>
                                        <option value="355">
                                            알바니아 +355
                                        </option>
                                        <option value="213">
                                            알제리 +213
                                        </option>
                                        <option value="244">
                                            앙골라 +244
                                        </option>
                                        <option value="251">
                                            에디오피아 +251
                                        </option>
                                        <option value="291">
                                            에리트레아 +291
                                        </option>
                                        <option value="372">
                                            에스토니아 +372
                                        </option>
                                        <option value="593">
                                            에콰도르 +593
                                        </option>
                                        <option value="503">
                                            엘살바도르 +503
                                        </option>
                                        <option value="44">
                                            영국 +44
                                        </option>
                                        <option value="290">
                                            영국령세인트헬레나 +290
                                        </option>
                                        <option value="246">
                                            영국령인도양지역 +246
                                        </option>
                                        <option value="350">
                                            영국령지브롤터 +350
                                        </option>
                                        <option value="500">
                                            영국령포클랜드제도 +500
                                        </option>
                                        <option value="967">
                                            예멘 +967
                                        </option>
                                        <option value="968">
                                            오만 +968
                                        </option>
                                        <option value="43">
                                            오스트리아 +43
                                        </option>
                                        <option value="504">
                                            온두라스 +504
                                        </option>
                                        <option value="962">
                                            요르단 +962
                                        </option>
                                        <option value="256">
                                            우간다 +256
                                        </option>
                                        <option value="598">
                                            우루과이 +598
                                        </option>
                                        <option value="998">
                                            우즈베키스탄 +998
                                        </option>
                                        <option value="380">
                                            우크라이나 +380
                                        </option>
                                        <option value="964">
                                            이라크 +964
                                        </option>
                                        <option value="98">
                                            이란 +98
                                        </option>
                                        <option value="972">
                                            이스라엘 +972
                                        </option>
                                        <option value="20">
                                            이집트 +20
                                        </option>
                                        <option value="39">
                                            이탈리아 +39
                                        </option>
                                        <option value="91">
                                            인도 +91
                                        </option>
                                        <option value="62">
                                            인도네시아 +62
                                        </option>
                                        <option value="81">
                                            일본 +81
                                        </option>
                                        <option value="1876">
                                            자메이카 +1 876
                                        </option>
                                        <option value="260">
                                            잠비아 +260
                                        </option>
                                        <option value="240">
                                            적도기니 +240
                                        </option>
                                        <option value="995">
                                            조지아 +995
                                        </option>
                                        <option value="86">
                                            중국 +86
                                        </option>
                                        <option value="236">
                                            중앙아프리카공화국 +236
                                        </option>
                                        <option value="253">
                                            지부티 +253
                                        </option>
                                        <option value="263">
                                            짐바브웨 +263
                                        </option>
                                        <option value="235">
                                            차드 +235
                                        </option>
                                        <option value="420">
                                            체코 +420
                                        </option>
                                        <option value="56">
                                            칠레 +56
                                        </option>
                                        <option value="237">
                                            카메룬 +237
                                        </option>
                                        <option value="238">
                                            카보베르데 +238
                                        </option>
                                        <option value="974">
                                            카타르 +974
                                        </option>
                                        <option value="855">
                                            캄보디아왕국 +855
                                        </option>
                                        <option value="254">
                                            케냐 +254
                                        </option>
                                        <option value="269">
                                            코모로,마요트 +269
                                        </option>
                                        <option value="506">
                                            코스타리카 +506
                                        </option>
                                        <option value="225">
                                            코트디부아르 +225
                                        </option>
                                        <option value="57">
                                            콜롬비아 +57
                                        </option>
                                        <option value="242">
                                            콩고 +242
                                        </option>
                                        <option value="243">
                                            콩고민주공화국 +243
                                        </option>
                                        <option value="53">
                                            쿠바 +53
                                        </option>
                                        <option value="965">
                                            쿠웨이트 +965
                                        </option>
                                        <option value="682">
                                            쿡제도 +682
                                        </option>
                                        <option value="385">
                                            크로아티아 +385
                                        </option>
                                        <option value="996">
                                            키르기스스탄 +996
                                        </option>
                                        <option value="686">
                                            키리바시 +686
                                        </option>
                                        <option value="357">
                                            키프로스 +357
                                        </option>
                                        <option value="886">
                                            타이완 +886
                                        </option>
                                        <option value="992">
                                            타지키스탄 +992
                                        </option>
                                        <option value="255">
                                            탄자니아 +255
                                        </option>
                                        <option value="66">
                                            태국 +66
                                        </option>
                                        <option value="90">
                                            터키 +90
                                        </option>
                                        <option value="228">
                                            토고 +228
                                        </option>
                                        <option value="676">
                                            통가 +676
                                        </option>
                                        <option value="993">
                                            투르크메니스탄 +993
                                        </option>
                                        <option value="216">
                                            튀니지 +216
                                        </option>
                                        <option value="1868">
                                            트리니다드토바고 +1 868
                                        </option>
                                        <option value="507">
                                            파나마 +507
                                        </option>
                                        <option value="595">
                                            파라과이 +595
                                        </option>
                                        <option value="92">
                                            파키스탄 +92
                                        </option>
                                        <option value="675">
                                            파푸아뉴기니 +675
                                        </option>
                                        <option value="680">
                                            팔라우 +680
                                        </option>
                                        <option value="970">
                                            팔레스타인 +970
                                        </option>
                                        <option value="51">
                                            페루 +51
                                        </option>
                                        <option value="351">
                                            포르투갈 +351
                                        </option>
                                        <option value="48">
                                            폴란드 +48
                                        </option>
                                        <option value="1787">
                                            푸에르토리코 +1 787
                                        </option>
                                        <option value="33">
                                            프랑스 +33
                                        </option>
                                        <option value="590">
                                            프랑스령과들루프 +590
                                        </option>
                                        <option value="594">
                                            프랑스령기아나 +594
                                        </option>
                                        <option value="687">
                                            프랑스령뉴칼레도니아 +687
                                        </option>
                                        <option value="262">
                                            프랑스령레위니옹 +262
                                        </option>
                                        <option value="596">
                                            프랑스령마르티니크 +596
                                        </option>
                                        <option value="508">
                                            프랑스령생피에르미클롱 +508
                                        </option>
                                        <option value="681">
                                            프랑스령월리스푸투나제 +681
                                        </option>
                                        <option value="689">
                                            프랑스령폴리네시아 +689
                                        </option>
                                        <option value="679">
                                            피지 +679
                                        </option>
                                        <option value="358">
                                            핀란드 +358
                                        </option>
                                        <option value="63">
                                            필리핀 +63
                                        </option>
                                        <option value="36">
                                            헝가리 +36
                                        </option>
                                        <option value="61">
                                            호주 +61
                                        </option>
                                        <option value="852">
                                            홍콩 +852
                                        </option>
                        </select>
                    </div>
                    <div class="int_mobile_area">
						<span class="ps_box int_mobile" style="width: 460px;">
							<input type="tel" id="tel" name="tel" placeholder="전화번호 입력('-' 포함하여 입력해주세요)" aria-label="전화번호 입력" class="int" maxlength="16">
							<label for="phoneNo" class="lbl"></label>
						</span>
                        <!-- <a href="https://nid.naver.com/user2/V2Join.nhn?token_sjoin=CrMVbMuUqJxRkOD4&amp;chk_all=on&amp;termsService=on&amp;termsPrivacy=on&amp;termsLocation=Y&amp;termsEmail=Y#" class="btn_verify btn_primary" id="btnSend" role="button">
                            <span class="">누르지마세요!</span>
                        </a> -->
                    </div>

                    <span class="error_next_box" id="phoneNoMsg" style="display:none" aria-live="assertive"></span>
                    <span class="error_next_box" id="authNoMsg" style="display:none" aria-live="assertive"></span>
                    <span class="error_next_box" id="joinMsg" style="display:none" aria-live="assertive"></span>
                </div>
                <!-- // 휴대전화 번호, 인증번호 입력 -->
                <!-- 관심분야 -->
                <div class="join_row join_email">
                    <h3 class="join_title"><label for="interest">관심분야<span class="terms_choice">(선택)</span></label></h3>
                    <span class="ps_box int_email box_right_space">
						<input type="text" id="interest" name="interest" title="관심분야" class="int" maxlength="40">
					</span>
                </div>
                <!-- //관심분야 -->
                <!-- 간단소개 -->
				<div class="join_row">
                	<h3 class="join_title"><label for="describe">간단소개<span class="terms_choice">(선택)</span></label></h3>
                	<span class="ps_box box_right_space" style="height: 120px;">
						<textarea id="describe" name="describe" title="간단소개" cols="68" rows="7" maxlength="100" style="resize: none; font-size: 12px;"></textarea>
					</span>
                <span class="error_next_box" id="nameMsg" style="display:none" aria-live="assertive"></span>
                </div>
                <!-- //간단소개 -->

                <div class="btn_area">
                    <button type="button" id="btnJoin" class="btn_type btn_primary" style="background-color: black;"><span>가입하기</span></button>
                </div>
            </div>
        </div>
    </div>
    <!-- // container -->
</form>

<!--가상주민번호-아이핀 팝업페이지 호출시 필요한 form-->
<form name="form_ipin" method="post" action="https://nid.naver.com/user2/V2Join.nhn?token_sjoin=CrMVbMuUqJxRkOD4&amp;chk_all=on&amp;termsService=on&amp;termsPrivacy=on&amp;termsLocation=Y&amp;termsEmail=Y">
    <input type="hidden" name="m" value="pubmain">
    <input type="hidden" name="enc_data" value="AgEEQTczOK0lSVe8NgvAzY7R4LU7mYkc+Jqnua6doIF5OdNKKrxqV4gNgOkHAvJL6XCz0kT1E+bZB7Rp496q6mHNUHy7rqbJ3x1QD/xImRc29XwABhPewoA7a1pOpRoFEjH51205zdRbqkps+xLtOGdcDCEgEjSaj7AHx0O7+1H+/MPwQVxEIMQ4mjqHV0Kji1QWH3Uww7xhoqzqfSDyPCPcrWkwPIiiLI/fra/qN7J+t1sUCKIe2iMzLFzxI+07X5kbO/zJ8dlw4fQ1ZRFNanRfzWHPEUqTykzdLdWOnpO2yfhJqY1EYM2LVuB7ojq/33IkoB+8nQ==">
</form>

<script type="text/JavaScript">

</script>

</div>

</body></html>