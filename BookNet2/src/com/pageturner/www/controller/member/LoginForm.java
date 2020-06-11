package com.pageturner.www.controller.member;
/**
 * 이 클래스는 로그인페이지를 보여주기 위한 클래스
 * @author 우현우
 * @since 2020-05-27
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pageturner.www.controller.*;

public class LoginForm implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/member/login.jsp";
		return view;
	} 

}
