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
	
	$('#likebtn').click(function(){ //like 버튼 클릭시 빨강하트로 변경 
		$(this).css('background-position', '-208px -370px');
	});
	
	$('#wBtn').click(function(){ //글쓰기 modal 열기 
		$('#writeModal').css('display', 'block');
	});
	
	$('#w-close_butt').click(function(){ //글쓰기 모달 닫기 
		$('#writeModal').css('display', 'none');
	});
	
	$('#p-submit').click(function(){ //글등록 버튼 눌렀을 떄 처리해주는 함수::ajax 처리 
		
	});
	
	//글작성 도서검색 ajax 처리 구문
	$('#book-search').click(function(){ //글쓰기 모달에서 읽은 도서 검색 클릭시 처리해주는 함수 
		$('#-s-b-modal').css('display', 'block');
		
		//입력한 검색어를 변수에 저장한다.
		var book = $('#findBook').val();
		
		//더미데이터용으로 현재 우리 디비에 있는 책 테이블에서 검색을 하도록 한다.
		$.ajax({ 
			url : '/BookNet/ajax/searchBook.cls',
			type : 'POST',
			dataType : 'json',
			async : false,
			data : {
				'searchWord' : book
			},
//			tranditional: true,
			success : function(data){
				$('.rstbook').attr('id', data.bno);
				$('#b-image').attr('src', data.largeimg);
				$('#b-genre').html('<b>' + data.gname + '</b');
				$('#b-title').html('<b>' + data.bname + '</b>');
				$('#b-author').html('<b>' + data.writer + '</b>');
				if(data.trans == 'null'){ //옮긴이가 null 값이면 출력해주지않아도 됨.
					$('#notrans').css('display', 'none');
				}else {
					$('#b-trans').html('<b>' + data.trans + '</b>');
				}
//				alert(data.bname);
//				$.each(data, function(index, item){
//					var result = '';
//					result += index + ' : ' + item;
//					console.log(result);
//					alert(result);
//				})
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
});