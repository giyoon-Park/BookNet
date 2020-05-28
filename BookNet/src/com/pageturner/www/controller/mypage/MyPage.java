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
		String view = "/mypage/fixed_mypage.jsp";
		
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("SID");
		String pid = (String)req.getAttribute("id");
		MyPageDAO mpDAO;
		Alarm alarm;

		if(pid == null) {
			mpDAO = new MyPageDAO(id);
			alarm = new Alarm(id);
		} else {
			mpDAO = new MyPageDAO(pid);
			alarm = new Alarm(pid);
		}

		MemberVO mInfo = mpDAO.getMemInfo();
		PostsSortByTime sorter = new PostsSortByTime();
		int cntPosts = mpDAO.cntPosts();
		int cntFallow = mpDAO.cntFallow();
		int cntFallower = mpDAO.cntFallower();
		ArrayList<PostsVO> postFullList = sorter.sortByTime(mpDAO.getPosts());
		ArrayList<PostsVO> likeFullList = sorter.sortByTime(mpDAO.getLikedPosts());
		ArrayList<AlarmVO> alarmFullList = alarm.alarmList;

		ArrayList<PostsVO> postList = new ArrayList<PostsVO>();
		ArrayList<PostsVO> likeList = new ArrayList<PostsVO>();
		ArrayList<AlarmVO> alarmList = new ArrayList<AlarmVO>();
//		for (int i = 0; i < 5; i++) {
//			if (!postFullList.isEmpty()) {
//				postList.add(postFullList.get(i));
//			}
//			if (!likeFullList.isEmpty()) {
//				likeList.add(likeFullList.get(i));
//			}
//			if (!alarmFullList.isEmpty()) {
//				alarmList.add(alarmFullList.get(i));
//			}
//		}

		req.setAttribute("INFO", mInfo);
		req.setAttribute("CNTPOST", cntPosts);
		req.setAttribute("CNTFALLOW", cntFallow);
		req.setAttribute("CNTFALLOWER", cntFallower);
		req.setAttribute("LIKE", likeFullList);

		if(pid == null) {
			req.setAttribute("ALARM", alarmFullList);
		} else {
			req.setAttribute("POST", postFullList);
		}

		return view;
	}
}