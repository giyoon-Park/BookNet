package com.pageturner.www.controller.ajax;
/**
 * 이 클래스는 게시글에 달린 댓글 리스트를 비동기로 불러올 컨트롤러 입니다.
 * @author leeseulkim
 * @since 26th May 2020
 * 
 */
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

import com.google.gson.*;
import org.json.simple.*;
import com.pageturner.www.controller.*;
import com.pageturner.www.dao.*;
import com.pageturner.www.vo.*;

public class ShowRplList implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("########");
		//ajax 처리임을 명시
		req.setAttribute("isRedirect", null);
		
		//파라미터 받기
		String spno = req.getParameter("pno");
		int pno = 0;
		try {
			pno = Integer.parseInt(spno);
		} catch(Exception e) {
			System.out.println("Integer.parseInt 오류!");
		}
		
		resp.setCharacterEncoding("UTF-8");
		
		CommentDAO dao = new CommentDAO();
		JSONArray list = dao.showListRpl(pno);
		
		Gson gson = new GsonBuilder().create();
		String gstr = gson.toJson(list);
		System.out.println(gstr);
		return gstr;
	}

}
