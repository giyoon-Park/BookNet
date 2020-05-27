/*
 * 이 스크립트는 jquery 진행을 위한 스크립트 파일입니다.
 * 웹 내 이벤트 처리를 담당하며 ajax 처리 또한 존재합니다.
 * @author leeseul kim
 * @since 25th May 2020
 * 
 */
$(document).ready(function(){
	$(document).scroll(function() {
		var maxHeight = $(document).height();
		var currentScroll = $(window).scrollTop() + $(window).height();
		if (maxHeight <= currentScroll + 100) {
			$('.posts_area').append('<article class="eachPost" id="이곳은게시물번호가들어갈자리"><!-- 작성자 정보 & 버튼 :: 아이디 불러와야함  --><div class="wrtInfo"><div class="wrtProf"><img src="https://img.icons8.com/cotton/64/000000/apple--v1.png"/></div><div class="wrter" id=""><b>작성자아이디</b></div><div class="like-butt" id=""><span style="font-size: 12px; line-height: 0px;" class="comt-img"></span></div><div class="like-butt" id="" style="display: flex;"><span style="font-size: 12px; line-height: 0px;" class="like-img" id="likebtn"></span></div></div><!-- 게시글의 본문부분::도서사진,도서이름,본문 --><div class="postCont" style="text-align: center; font-size: 16px;"><!-- 도서사진, 도서이름, 게시글본문 --><div class="book-pic"><!-- 도서 사진 들어갈 부분 --></div><div class="book-name"><!-- 도서명 들어갈 부분 --></div><div class="post-body"><!-- 게시글 부분 --></div></div><div class="etcdiv" style="text-align: center; font-size: 16px;">태그<!-- 게시글 해시태그 부분 --></div></article>');
		}
		
	});
	
	$('#more_butt').click(function() { //modal에서 알림페이지로 이동 
		$(location).attr('href', '/BookNet/alarm/alamPage.cls');
	});

	$('#aBtn').click(function() { //modal 열기
		$('#actModal').css('display', 'block');
	});

	$('#a-close_butt').click(function() { //modal 닫기버튼 
		$('#actModal').css('display', 'none');
	});
	
	$('.likebtn').click(function(){ //like 버튼 클릭시 빨강하트로 변경 
		$(this).css('background-position', '-208px -370px');
	});
	
	$('.comtbtn').click(function(){ //댓글버튼 클릭시 댓글 달 수 있는 창 보여주기 
		$('.wrtcomt').css('display', '');
		$('.p-modal-content').css('height','590px');
	});
	
	$('.modi_post').click(function(){ //게시물 상세보기 모달 
		var pno = $(this).attr('id'); //게시글번호
		var sid = $('#'+'id'+pno).text(); //작성자 아이디
		var stime = $('#'+'time'+pno).html(); //작성시간 
		var simg = $('#'+'img'+pno).attr('src'); //선택도서 사진
		var sgen = $('#'+'genre'+pno).text(); //선택도서 장르 
		var bname = $('#'+'bname'+pno).text(); //선택도서 제목
		var pbody = $('#'+'pbody'+pno).text(); //본문 
		var htags = $('#'+'hash'+pno).text(); //해시태그 
		$('.p-modal-content').attr('id', pno);
		$('b.wrter').html(sid);
		$('#time').html(stime);
		$('#bimg').attr('src', simg);
		$('#genre-pad').html(sgen);
		$('b#genre-name').html(bname);
		$('#p-body').html(pbody);
		$('#gethash').html(htags);
//		alert(sgen);
		$.ajax({
			url: '/BookNet/ajax/showRplList.cls',
			type: 'POST',
			dataType: 'json',
			data: {
				'pno': pno
			},
			success: function(obj){
				var len = obj.length;
				alert(obj[0].comnt);
//				alert(len);
				for(var i = 0; i < len; i++){
					$('.w100-h95').attr('id', obj[i].cno);
					var str = $('.w100-h95').attr('id');
					$('#'+str).append('<div style="float: left; width: 30px; height: 30px; margin-left: 10px; border: 1px dashed black;">' +
										'<img src="" style="box-sizing: border-box;"/>' +
										'</div>' +
										'<div class="h30-m10" style="width: 60px;">' + obj[i].id + '</div>' +
										'<div class="h30-m10" style="width: 150px;">' + obj[i].sdate + '</div>' +
										'<div class="h30-m10" style="width: 280px;">' + obj[i].comnt + '</div>');
//					$('#content').append(item[i].title + '<br>');						
					$('.detailPost').css('display', 'block');
				}
			},
			error: function(){
				alert("실패!");
			}
		});
	});
	
	$('.comsubbtn').click(function(){ //댓글 등록하기 
		var pno = $('.p-modal-content').attr('id');
		var cbody = $('.combody').val();
		
		$.ajax({
			url: '/BookNet/ajax/addRplProc.cls',
			type: 'POST',
			dataType: 'json',
			data: {
				'cbody': cbody,
				'pno': pno
			},
			success: function(data){
				if(data.cnt != 1){
					alert('댓글등록에 실패하였습니다.');
				}
				
				$('.combody').val('');
//				$('.w100-h95').append('<div style="float: left; width: 30px; height: 30px; border: 1px dashed black">' +
//						'<img src="" style="box-sizing: border-box;"/>' +
//						'</div>' +
//						'<div class="h30-m10" style="width: 60px;">'+ ${SID} +'</div>' +
//						'<div class="h30-m10" style="width: 80px;">'+  +'</div>' +
//						'<div class="h30-m10" style="width: 350px;">댓글 내용</div>');
				
			},
			error: function(){
//				console.log('code: ' + request.status + '\n message: ' + request.responseText + '\n error: ' + error);
				alert("###통신에러###");
			}
		});
	});
	
	$('#d-close_butt').click(function(){ //게시물 상세보기 닫기 
		$('.detailPost').css('display', 'none');
	});
	
	$('#wBtn').click(function(){ //글쓰기 modal 열기 
		$('#writeModal').css('display', 'block');
	});
	
	$('#w-close_butt').click(function(){ //글쓰기 모달 닫기 
		$('#writeModal').css('display', 'none');
	});
	
	//글작성 도서검색 ajax 처리 구문
	$('#book-search').click(function(){ //글쓰기 모달에서 읽은 도서 검색 클릭시 처리해주는 함수 
		$('#-s-b-modal').css('display', 'block');
		
		//입력한 검색어를 변수에 저장한다.
		var book = $('#findBook').val();

		//interparkAPI 검색 요청 
		$.ajax({ 
			url : '/BookNet/ajax/searchBook.cls',
			type : 'POST',
			dataType : 'json',
			data : {
				'searchWord' : book
			},
//			tranditional: true,
			success : function(obj){
				var data = obj[0].title;
				var len = obj.length;
				alert(len);
				for(var i = 0; i < len; i++){
					$('.rstPage').append('<div class="w100perh300 rstbook" id="">' +
							'<div class="-s-b-img">' +
								'<img id="b-image"/>' +
							'</div>' +
							'<div class="-s-b-info">' +
								'<div style="float: left; margin-right: 15px;">도서장르 : </div>' + 
								'<div style="float: left;"id="b-genre"></div>' +
							'</div>' +
							'<div class="-s-b-info">' +
								'<div style="float: left; margin-right: 15px;">도서명 : </div>' + 
								'<div style="float: left;"id="b-title"></div>' +
							'</div>' +
							'<div class="-s-b-info">' +
								'<div style="float: left; margin-right: 15px;">저 자 : </div>' + 
								'<div style="float: left;"id="b-author"></div>' +
							'</div>' +
							'<div class="-s-b-info" id="notrans">' +
								'<div style="float: left; margin-right: 15px;">옮긴이 : </div>' + 
								'<div style="float: left;"id="b-author"></div>' +
							'</div>' +
							'<div class="-s-b-submit">' +
								'<input type="button" value="책 등록" id="sel-b-submit"/>' +
							'</div>' +
						'</div>');
				}
			},
			error : function(){
				alert("통신에러!");
			}
		});
	});
	
	$('#sel-b-submit').click(function(){ 
		var selno = $('.rstbook').attr('id'); //도서번호 
		var selimg = $('#b-image').attr('src'); //도서 이미지
		var selttl = $('#b-title').text(); //도서 제목 
//		alert(selttl); 
		$('#-s-b-modal').css('display', 'none');
		
		//값 셋팅 
		$('#bno').val(selno);
		$('#sel-wrt-b-img').attr('src', selimg);
		$('#sel-wrt-b-ttl').html('<b>' + selttl + '</b>');
	});
	
	$(document).on('click', '#p-submit', function(){
		//이미 도서번호는 input name=bno 에 담겨져 있다.
		//select로 선택된 감정을 변수에 대입하기 
		var emo = $('#selEmo').val();
		var body = $('#postBody').val();
		var htag = $('#hash-input').val();
		alert(htag);
		$('#eno').val(emo);
		$('#body').val(body);
		$('#tags').val(htag);
//		alert(len);
		
		if(!emo){
			$('#selEmo').focus();
			return
		}
		if(!body){
			$('#postBody').focus();
			return
		}
		
		//데이터 넘기기
		$('#frm').attr('action','/BookNet/post/postWriteProc.cls');
		$('#frm').submit();
	});
	
//	$(document).on('keyup', '#hash-input', function(){ //해시태그 작성시
//		if(keyCode == 32){
//			//스페이스바 입력시 #으로 대체해준다.
//		}
//	});
	
});