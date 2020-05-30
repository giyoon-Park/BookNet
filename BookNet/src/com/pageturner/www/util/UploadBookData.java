package com.pageturner.www.util;
/**
 *	이 클래스는 API를 통해서 받아온 데이터를 db에 저장하는 기능을 수행하는 클래스이다.
 *	@author	박기윤
 *	@since 2020.05.27
 */
import java.util.*;
import com.pageturner.www.vo.*;
import com.pageturner.www.dao.*;

public class UploadBookData {

	public UploadBookData() {}
	public UploadBookData(ArrayList<BookVO> list) {
		UploadBookDAO upDAO = new UploadBookDAO();
		for (int i = 0; i < list.size(); i++) {
			String publish = list.get(i).getPublisher();
			String isbn = list.get(i).getIsbn();
			if(upDAO.ckPublish(publish) != 1) {
				upDAO.insertPublish(list.get(i));
			}
			if(upDAO.ckBook(isbn) != 1) {
				upDAO.insertBook(list.get(i));
			}
		}
	}

}
