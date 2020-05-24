package com.pageturner.www.controller.ajax;

import javax.servlet.*;
import javax.servlet.http.*;

import com.pageturner.www.controller.PageController;
//import com.pageturner.www.util.*;

public class SearchBook implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		req.setAttribute("isRedirect", null);
		
		
		
		return null;
//		// ajax 파라미터 받기
//		String searchWord = req.getParameter("searchWord");
//
//		System.out.println("########" + searchWord);
//
//		int code = 1001;
//
//		// 인터파크api에 매개변수를 보내고 결과받기
//		InterParkAPI iApi = new InterParkAPI(code, searchWord);
//		// json 형식으로 파싱완료
//		
//		return iApi.toString();
	}

}
