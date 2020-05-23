package com.pageturner.www.controller.member;

import javax.servlet.http.*;

import com.pageturner.www.controller.*;
import com.pageturner.www.dao.*;

public class LoginProc implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/BookNet/main/main.cls";
		req.setAttribute("isRedirect", true);
		
		//jsp로부터 넘어온 파라미터값 받기 
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		System.out.println(id + " " + pw);
		//데이터베이스 처리하기
		MemberDAO mDAO = new MemberDAO();
		
		//반환값 리턴받을 변수 선언
		int cnt = mDAO.execLogin(id, pw);
		
		if(cnt == 1) {
			//로그인처리 성공!
			HttpSession session = req.getSession();
			session.setAttribute("SID", id);
			req.setAttribute("isRedirect", true);
		} else {
			//로그인 실패!
			view = "/BookNet/member/login.cls";
		}
		
		return view;	
	}

}
