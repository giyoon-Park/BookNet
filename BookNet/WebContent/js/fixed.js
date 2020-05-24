$(document).ready(function(){
	$('#p-submit').click(function(){ //글등록 버튼 눌렀을 떄 처리해주는 함수::ajax 처리 
		
	});
	
	$('#book-search').click(function(){ //글쓰기 모달에서 읽은 도서 검색 클릭시 처리해주는 함수 
		//검색결과를 modal 로 띄워줄 수 있도록 한다.
		$('#-s-b-modal').css('display', 'block');
		
		//입력한 검색어를 변수에 저장한다.
		var book = $('#findBook').val();
		alert(book);
		
		//더미데이터용으로 현재 우리 디비에 있는 책 테이블에서 검색을 하도록 한다.
		$.ajax({ 
			url : '/BookNet/ajax/searchBook.cls',
			type : 'POST',
			dataType : 'json',
			data : {
				'searchWord' : book
			},
//			tranditional: true,
			success : function(data){
				$('.rstbook').attr('id', data.bno);
				$('#b-image').attr('src', data.largeimg);
				$('#b-title').html('<b>' + data.bname + '</b>');
				$('#b-author').html('<b>' + data.writer + '</b>');
				if(data.trans == null){
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
//				if(obj.trans == null){
//					//옮긴이는 출력해주지 않아도 된다.
//					$('#b-trans').css('display', 'none');
//				}
			},
			error : function(){
				alert("통신에러!");
			}
		});
	});
});