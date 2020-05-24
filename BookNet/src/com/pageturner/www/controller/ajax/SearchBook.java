package com.pageturner.www.controller.ajax;

import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.pageturner.www.controller.*;
import com.pageturner.www.util.*;
import com.pageturner.www.vo.*;

public class SearchBook implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("#######");
		req.setAttribute("isRedirect", null);
		//파라미터 받아오기 
		String searchWord = req.getParameter("searchWord");
		
		//디비 작업 
//		int code = 1001;
		
		InterParkAPI api = new InterParkAPI();
		InterParkAPI iApi = new InterParkAPI(api.SEARCH, searchWord);		
		
		String json = iApi.toString();
		
		System.out.println(json);
		
		return json;
	}

}
