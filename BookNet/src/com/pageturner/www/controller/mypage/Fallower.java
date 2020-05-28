package com.pageturner.www.controller.mypage;
/**
 *	이 클래스는 자신을 팔로우하는 사람들의 목록 페이지로 연결해주는 컨트롤러 클래스이다.
 *	@author	박기윤
 *	@since	2020.05.28
 */
import java.util.*;
import javax.servlet.http.*;
import com.pageturner.www.controller.*;
import com.pageturner.www.dao.*;
import com.pageturner.www.vo.*;

public class Fallower implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/mypage/fallower.jsp";
		int fallow_no = Integer.parseInt(req.getParameter("mno"));
		MyPageDAO mpDAO = new MyPageDAO();
		String id = mpDAO.getId(fallow_no);
		ArrayList<FallowVO> list = mpDAO.getFallowerList(fallow_no);
		req.setAttribute("LIST", list);
		req.setAttribute("pid", id);
		
		return view;
	}

}
