package com.pageturner.www.controller.mypage;
/**
 *	이 클래스는 마이페이지를 출력하기 위한 클래스이다.
 *	@author	박기윤
 *	@since 2020.05.26
 */
import javax.servlet.http.*;
import java.util.*;
import com.pageturner.www.controller.*;
import com.pageturner.www.dao.*;
import com.pageturner.www.vo.*;
import com.pageturner.www.util.*;

public class MyPage implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/mypage/mypage.jsp";
		
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("SID");
		String pid = req.getParameter("id");
		MyPageDAO mpDAO = null;
		ArrayList<AlarmVO> alarmList = null;
		
		if(id == null) {
			view = "/BookNet/member/login.cls";
			req.setAttribute("isRedirect", true);
			return view;
		}

		if(pid == null) {
			mpDAO = new MyPageDAO(id);
			Alarm alarm = new Alarm(id);
			alarmList = alarm.alarmList;
		} else {
			mpDAO = new MyPageDAO(pid);
		}

		MemberVO mInfo = mpDAO.getMemInfo(id);
		int cntPosts = mpDAO.cntPosts();
		int cntFallow = mpDAO.cntFallow();
		int cntFallower = mpDAO.cntFallower();
		ArrayList<PostsVO> postList = mpDAO.getPosts();
		ArrayList<PostsVO> likeList = mpDAO.getLikedPosts();

		req.setAttribute("INFO", mInfo);
		req.setAttribute("CNTPOST", cntPosts);
		req.setAttribute("CNTFALLOW", cntFallow);
		req.setAttribute("CNTFALLOWER", cntFallower);
		req.setAttribute("LIKE", likeList);

		if(pid == null) {
			req.setAttribute("ALARM", alarmList);
		} else {
			req.setAttribute("POST", postList);
		}

		return view;
	}
}