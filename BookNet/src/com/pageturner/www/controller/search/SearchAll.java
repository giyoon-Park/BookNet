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

		//인코딩
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		// 검색어 담기
		String key = req.getParameter("searchinput");
		// 아이디 담기
		String sid = (String)req.getSession().getAttribute("SID");
		
		// keyword 구분자 넣어서 초기화 
		String keyword = "%" + key + "%";
		SearchDAO sDAO = new SearchDAO();
		// 데이터베이스 작업
		ArrayList<SearchVO> list = sDAO.getAllList(keyword);
		//데이터베이스 작업하고 결과받기 
		PostsDAO dao = new PostsDAO();
		ArrayList<PostsVO> post= dao.getAllList(sid);
		// 뷰에 데이터 심고
		System.out.println("Key"+key);
		if(key == null || key == "") {
			list =  sDAO.getAllList("search");
			System.out.println("List"+list);
		}else {
			list = sDAO.getAllList(keyword);
			System.out.println("List+sDAO"+list);
		}
		req.setAttribute("LIST", list);
		req.setAttribute("KEYWORD", key);
		req.setAttribute("POST", post);
		return view;
	}
}