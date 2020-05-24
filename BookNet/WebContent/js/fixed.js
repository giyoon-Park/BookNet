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
			success : function(obj){
				$.each(obj, function(){
					
				});
//				var item = obj.item;
//				var len = item.length;
//				for(var i = 0; i < len; i++){
//					$('#b-title').append(item[i].title + '<br>');
//				}
			},
			error : function(error){
				alert("###통신에러###");
				console.log(error);
//				console.log("code : " + request.status + "\n message : " + request.responseText	+ "\n error : " + error);
			}
		});
	});
});