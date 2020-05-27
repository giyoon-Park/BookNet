/**
 * 이 JS는 호출과 footer, 검색창 clear이벤트를 준다.
 * @actor 서동혁
 * @version v.0.1.0
 * @since 2020.05.27
 */
$(function(){
	 
   $('#lbtn').click(function(){
      $(location).attr('href','/BookNet/member/login.cls');
   })
   $('#lbtn2').click(function(){
      $(location).attr('href','/BookNet/member/login.cls');
   })
   $('#jbtn').click(function(){ 
      $(location).attr('href','/BookNet/member/join.cls');
   })
   $('#jbtn2').click(function(){
      $(location).attr('href','/BookNet/member/join.cls');
   })
   $('.dCJp8').click(function(){
      $('.closeing').remove();
   })
  /*  // 스크롤 함수
  $(document).scroll(function() {
    var maxHeight = $(document).height();
    var currentScroll = $(window).scrollTop() + $(window).height();
    if (maxHeight <= currentScroll + 100) {
       $('.posts_area').append('<article class="eachPost" id="이곳은게시물번호가들어갈자리"><!-- 작성자 정보 & 버튼 :: 아이디 불러와야함  --><div class="wrtInfo"><img src="https://img.icons8.com/nolan/64/apple-seed.png" style=" width: 49px;height: 49px; position: relative ; right: 215px; bottom: 19px;"/><div class="wrtProf"></div><div class="wrter" id=""><b>작성자아이디</b></div><div class="like-butt" id=""><span style="font-size: 12px; line-height: 0px;" class="comt-img"></span></div><div class="like-butt" id="" style="display: flex;"><span style="font-size: 12px; line-height: 0px;" class="like-img" id="likebtn"></span></div></div><!-- 게시글의 본문부분::도서사진,도서이름,본문 --><div class="postCont" style="text-align: center; font-size: 16px;"><!-- 도서사진, 도서이름, 게시글본문 --><div class="book-pic"><!-- 도서 사진 들어갈 부분 --></div><div class="book-name"><!-- 도서명 들어갈 부분 --></div><div class="post-body"><!-- 게시글 부분 --></div></div><div class="etcdiv" style="text-align: center; font-size: 16px;">태그<!-- 게시글 해시태그 부분 --><button class="Bbtn">버튼</button></div></article>');
    }
    
  }) */
	// footerUp
	var hei = $('#footer-wrap').css("height"); 
	var wei = 0;
		// 올리기
	 $("#footer-wrap").mouseenter(function(){
			if($('#footer-wrap').css("height") == hei){
				$('#footer-wrap').css("transition","all 0.6s");
				$('#footer-wrap').css("background-color","#F7B3D2");
				$('#footer-wrap').css("color","#FFF");
				$('#footer-wrap').css("height","186.438px");
			} else if($('#footer-wrap').css("height") == wei){
				$('#footer-wrap').css("transition","all 0.6s");
				$('#footer-wrap').css("background-color","#F7B3D2");
				$('#footer-wrap').css("color","#FFF");
				$('#footer-wrap').css("height","186.438px");
			}
			
	// 내리기
	 	$("#footer-wrap").mouseleave(function(){
	 		 wei = $('#footer-wrap').css("height");
	 		if($('#footer-wrap').css("height") == wei){
	 			$('#footer-wrap').css("height", hei);
				$('#footer-wrap').css("background-color","#F3F0F7");
				$('#footer-wrap').css("color","#FFF");
				$('#footer-wrap').css("transition","all 0.6s");
				$('#footer-wrap').css("overflow","hidden");
	 		}
		});
	});
				// search clear
				var $ipt = $('#searchinput'),
				    $clearIpt = $('#searchclear');
						// keyup시 x표시
					$ipt.keyup(function(){
					  $("#searchclear").toggle(Boolean($(this).val()));
					});
						
						
					$clearIpt.toggle(Boolean($ipt.val()));
					$clearIpt.click(function(){
					  $("#searchinput").val('').focus();
					  // display 속성을 none으로 바꾼다. : 감춘다
					  $(this).hide();
					});
					
				// login_alert	
				$('#searchinput').keyup(function(e){
					if(e.keyCode==13){
						swal ({ text:"Oops" , title:"Please use after login!" ,  icon:"error" });
					/* 	swal({
							  title:  "Please use after login!" , icon: "success", buttons:["12314", "Do it!"],
							}); */
							
					}
				})
}) 