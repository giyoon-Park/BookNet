package com.pageturner.www.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pageturner.www.controller.PageController;

public class LogoutProc implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/BookNet/main/non.cls";
		req.setAttribute("isRedirect", true);
		
		req.getSession().removeAttribute("SID");
		
		return view;
	}

}
