package com.pageturner.www.controller.post;
/**
 * 이 클래스는 로그인한 회원이 자신의 게시물에 대한 삭제요청이 들어왔을 때 진행하는 컨트롤러입니다.
 * @author leeseulkim
 * @since 25th May 2020
 * 
 * 
 */

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pageturner.www.controller.PageController;

public class PostDelProc implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/main/mem.cls";
		req.setAttribute("isRedirect", true);
		
		//파라미터 불러오기 
		
		//삭제진행하는 db 요청 
		
		return view;
	}

}
