package com.pageturner.www.controller.member;

/**
 * 회원 정보수정 처리
 * @author	이명환
 * @since	2020.05.26
 * 
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pageturner.www.controller.PageController;
import com.pageturner.www.dao.MemberDAO;

public class EditMemInfoProc implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/mypage/mypage.cls";
		req.setAttribute("isRedirect", true);
		
		String pw = req.getParameter("pw");
		String mail = req.getParameter("mail");
		String tel = req.getParameter("tel");
		String interest = req.getParameter("interest");
		String nickname = req.getParameter("nickname");
		String describe = req.getParameter("describe");
		String intershow = req.getParameter("intershow");
		String birthshow = req.getParameter("birthshow");
		String genshow = req.getParameter("genshow");
		
		// ori_name 뽑아야댐
		
		MemberDAO mDAO = new MemberDAO();
		int cnt = mDAO.editUser(pw, mail, tel, interest, nickname, describe, intershow, birthshow, genshow);
		
		if(cnt != 1) {	// 에러페이지로 보내짐
			view = "/main/error.cls";
			return view;
		}
		
		return view;
	}

}
