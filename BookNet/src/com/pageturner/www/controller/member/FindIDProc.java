package com.pageturner.www.controller.member;

/**
 * 아이디 찾기 처리
 * @author	이명환
 * @since	2020.05.26
 * 
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pageturner.www.controller.PageController;
import com.pageturner.www.dao.MemberDAO;
import com.pageturner.www.vo.MemberVO;

public class FindIDProc implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/member/login.cls";
		req.setAttribute("isRedirect", true);
		
		MemberDAO mDAO = new MemberDAO();
		MemberVO mVO = mDAO.findID(req.getParameter("name"), req.getParameter("mail"));
		
		req.setAttribute("findID", mVO);
		return view;
	}

}
