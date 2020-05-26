package com.pageturner.www.controller.member;

/**
 * 회원 정보수정 페이지 요청
 * @author	이명환
 * @since	2020.05.26
 * 
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pageturner.www.controller.PageController;

public class EditMemInfo implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/member/editMemInfo.jsp";
		
		return view;
	}

}
