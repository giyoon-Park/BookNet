package com.pageturner.www.controller.post;
/**
 * 이 클래스는 로그인한 회원이 자신의 게시물에 대한 삭제요청이 들어왔을 때 진행하는 컨트롤러입니다.
 * @author leeseulkim
 * @since 25th May 2020
 * 
 * 
 */

import javax.servlet.*;
import javax.servlet.http.*;

import com.pageturner.www.controller.*;
import com.pageturner.www.dao.*;

public class PostDelProc implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/BookNet/main/main.cls";
		req.setAttribute("isRedirect", true);
		int cnt = 0;
		
		//파라미터 불러오기 
		String spno = req.getParameter("pno");
		int pno = 0;
		
		try {
			pno = Integer.parseInt(spno);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		//삭제진행하는 db 요청 
		CommentDAO dao = new CommentDAO();
		cnt = dao.delPost(pno);
		
		return view;
	}

}
