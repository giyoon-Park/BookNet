package com.pageturner.www.controller.member;
/**
 * 이 클래스는 로그인 처리를 위한 클래스
 * @author 우현우
 * @since 2020-05-27
 */
import javax.servlet.http.*;

import com.pageturner.www.controller.*;
import com.pageturner.www.dao.*;
import com.pageturner.www.sql.*;
public class LoginProc implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/BookNet/main/main.cls";
		req.setAttribute("isRedirect", true);
		
		//파라미터 가져오기
		String sid = req.getParameter("id");
		String spw = req.getParameter("pw");
		
		//데이터베이스 처리하기
		MemberDAO mDAO = new MemberDAO();
		int cnt = mDAO.execLogin(sid, spw);
		
		//로그인 처리 유무
		if(cnt == 1) {
			HttpSession session = req.getSession();
			session.setAttribute("SID", sid); 
		}else {
			//로그인 실패
			view = "/BookNet/member/login.cls";
		}
		return view;	
	}

}
