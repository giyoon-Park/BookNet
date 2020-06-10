package com.pageturner.www.controller.alarm;
/**
 *	이 클래스는 로그인한 회원에게 모든 알림을 제공하는 클래스이다.
 *	@author	박기윤
 *	@since 2020.05.27
 */
import javax.servlet.http.*;
import com.pageturner.www.controller.*;
import com.pageturner.www.util.*;
import com.pageturner.www.vo.*;
import java.util.*;

public class AlarmPage implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/alarm/alarmPage.jsp";
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("SID");
		Alarm alarm = new Alarm(id);
		ArrayList<AlarmVO> list = alarm.alarmList;
		
		req.setAttribute("LIST", list);
		
		return view;
	}

}