package com.pageturner.www.controller.search;
/**
 * 이 클래스는 해시태그 검색 결과페이지를 내보내는 클래스.
 * 
 * @author 서동혁
 * @version v.0.1.0
 * @since 2020.05.25
 * 
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pageturner.www.controller.PageController;

public class SearchHash implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/search/searchHash.jsp";
		return view;
	}

}
