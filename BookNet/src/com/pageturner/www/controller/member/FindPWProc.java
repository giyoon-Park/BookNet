package com.pageturner.www.controller.member;

/**
 * 비밀번호 찾기 처리
 * @author	이명환
 * @since	2020.05.26
 * 
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pageturner.www.controller.PageController;
import com.pageturner.www.dao.MemberDAO;
import com.pageturner.www.vo.MemberVO;

public class FindPWProc implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/member/login.cls";
		req.setAttribute("isRedirect", true);
		
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String mail = req.getParameter("mail");
		
		MemberDAO mDAO = new MemberDAO();
		MemberVO mVO = mDAO.findPW(id, name, mail);
		
		req.setAttribute("findPW", mVO);
		
		return view;
	}

}
