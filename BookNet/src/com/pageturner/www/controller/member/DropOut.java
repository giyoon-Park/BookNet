package com.pageturner.www.controller.member;

/**
 * 회원탈퇴처리
 * @author	이명환
 * @since	2020.05.26
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pageturner.www.controller.PageController;
import com.pageturner.www.dao.MemberDAO;

public class DropOut implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/main/non.cls";
		req.setAttribute("isRedirect", true);
		
		int cnt = 0;
		MemberDAO mDAO = new MemberDAO();
		cnt = mDAO.delUser((String)req.getSession().getAttribute("SID"));
		
//		if(cnt != 1) {	// 에러페이지로 보내질 상황
//			view = "/main/error.cls";
//			return view;
//		}
		
		req.getSession().removeAttribute("SID");
		
		return view;
	}

}
