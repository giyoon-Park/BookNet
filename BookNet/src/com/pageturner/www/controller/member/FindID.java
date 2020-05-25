package com.pageturner.www.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pageturner.www.controller.PageController;

public class FindID implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/member/findID.jsp";
		
		return view;
	}

}
