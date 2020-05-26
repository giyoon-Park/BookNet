package com.pageturner.www.controller.alarm;
/**
 *	이 클래스는 로그인한 회원에게 각종 알림을 제공하는 클래스이다.
 */
import javax.servlet.http.*;

import com.pageturner.www.controller.PageController;

public class AlarmPage implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/alarm/alarmPage.jsp";
		HttpSession session = req.getSession();
		
		return view;
	}

}