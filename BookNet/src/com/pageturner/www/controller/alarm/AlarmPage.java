package com.pageturner.www.controller.alarm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pageturner.www.controller.PageController;

public class AlarmPage implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/alarm/alarmPage.jsp";
		
		return view;
	}

}