package com.pageturner.www.controller.search;
/**
 * 이 클래스는 모든 검색 결과페이지를 내보내는 클래스.
* @author 서동혁
* @version v.0.1.0
* @since 2020.05.27 
* 
*/
import java.io.*;
import java.util.*;
import javax.servlet.http.*;
import javax.servlet.*;
import com.pageturner.www.controller.PageController;
import com.pageturner.www.controller.*;
import com.pageturner.www.dao.*;
import com.pageturner.www.vo.*;

public class SearchAll implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp){
		String view = "/search/searchAll.jsp";
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		String key = req.getParameter("searchinput");

		String keyword = "%" + key + "%";
		SearchDAO sDAO = new SearchDAO();
		// 데이터베이스 작업
		ArrayList<SearchVO> list = sDAO.getAllList(keyword);
		// 뷰에 데이터 심고
		req.setAttribute("LIST", list);
		req.setAttribute("KEYWORD", key);
		return view;
	}
}