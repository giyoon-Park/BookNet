package com.pageturner.www.controller.main;

/**
 * 로그인한 회원에게 보여주는 메인화면입니다. 
 * @author leeseulkim
 * 
 */
import javax.servlet.http.*;
import java.util.*;

import com.pageturner.www.controller.*;
import com.pageturner.www.vo.*;
import com.pageturner.www.dao.*;

public class Mem implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/main/mem_main.jsp";
		// 메인화면에 게시글 보여주기
		// 세션에 등록되어있는 아이디값 가져오기
		String sid = (String) req.getSession().getAttribute("SID");

		if (sid == null || sid.length() == 0) {
			// 로그인 다시 받도록 하기
			view = "/BookNet/member/login.cls";
			req.setAttribute("isRedirect", true); 
		}

		// 데이터베이스 작업하고 결과받기
		PostsDAO dao = new PostsDAO();
		ArrayList<PostsVO> list = dao.getAllList(sid);

		// 결과 넘기기
		req.setAttribute("LIST", list);

		return view;
	}

}
