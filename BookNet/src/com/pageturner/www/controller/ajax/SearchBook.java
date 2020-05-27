package com.pageturner.www.controller.ajax;
/**
 * 이 클래스는 게시글 작성시 도서검색에 대한 비동기처리를 위한 클래스입니다.
 * @author leeseulkim
 * @since 25th May 2020
 * @see
 * 		InterParkAPI
 */
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.google.gson.*;
import org.json.simple.*;
import com.pageturner.www.controller.*;
import com.pageturner.www.dao.*;
import com.pageturner.www.vo.*;

public class SearchBook implements PageController {
	
//	InterParkAPI api;
	
	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		req.setAttribute("isRedirect", null);
		//파라미터 받기
		String word = req.getParameter("searchWord");

		//응답문서 인코딩 설정
		resp.setCharacterEncoding("UTF-8");
		
		//디비작업해서 결과받기 
		PostsDAO dao = new PostsDAO();
		JSONArray list = dao.getSearchRst(word);
		
		Gson gson = new GsonBuilder().create();
		String gstr = gson.toJson(list);
		System.out.println(gstr);
		
		return gstr;
	}

}
