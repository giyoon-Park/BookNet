package com.pageturner.www.controller.main;
/**
 * 로그인한 회원에게 보여주는 메인화면입니다. 
 */
import javax.servlet.http.*;
import java.util.*;

import com.pageturner.www.controller.*;
import com.pageturner.www.vo.*;
import com.pageturner.www.dao.*;

public class NonMem implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/main/non_main.jsp";
		//메인화면에 게시글 보여주기 
//		String sid = (String)req.getSession().getAttribute("SID");
		
		//더미용으로 비회원과 같이 모든 게시글을 보여주도록 했습니다.
		//더미 작업 이후에는 꼭 매개변수에 세션에 저장된 id 값을 넣어주어야합니다.
		
		//데이터베이스 작업하고 결과받기 
		PostsDAO dao = new PostsDAO();
		ArrayList<PostsVO> list = dao.getAllList();
		
		//결과 넘기기 
		req.setAttribute("LIST", list);
		
		return view;
	}

}
