package com.pageturner.www.controller.ajax;

import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

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
		
		//디비작업해서 결과받기 
		PostsDAO dao = new PostsDAO();
		ArrayList<PostsVO> list = dao.getSearchRst(word);
		
		//응답문서 인코딩 설정
		resp.setCharacterEncoding("UTF-8");
		
		//json으로 만들어주어야하는데 이때 검색결과의 수가 몇개가 될지 모른다.
		StringBuffer buff = new StringBuffer();
//		int rst = list.size(); //검색결과의 수 
		for(int i = 0; i < list.size(); i++) {
			buff.append("{");
			buff.append("\"bno\" : " + list.get(i).getBno() + ", ");
			buff.append("\"bname\" : \"" + list.get(i).getBname() + "\", ");
			buff.append("\"writer\" : \"" + list.get(i).getWriter() + "\", ");
			buff.append("\"trans\" : \"" + list.get(i).getTrans() + "\", ");
			buff.append("\"gname\" : \"" + list.get(i).getGname() + "\", ");
			buff.append("\"largeimg\" : \"" + list.get(i).getLargeimg() + "\"");
//			buff.append("\"cnt\" : " + rst + "\"");
			buff.append("}");
		}
		System.out.println(buff.toString());
		
		return buff.toString();
	}

}

//	@Override
//	public String exec(HttpServletRequest req, HttpServletResponse resp) {
//		System.out.println("#######");
//		req.setAttribute("isRedirect", null);
//		//파라미터 받아오기 
//		String searchWord = req.getParameter("searchWord");
//		
//		//디비 작업 
////		int code = 1001;
//		
//		InterParkAPI api = new InterParkAPI();
//		InterParkAPI iApi = new InterParkAPI(api.SEARCH, searchWord);		
//		
//		String json = iApi.toString();
//		
//		System.out.println(json);
//		
//		return json;
//	}