package com.pageturner.www.controller.mypage;
import java.io.UnsupportedEncodingException;
/**
 *	이 클래스는 자신이 팔로우하고 있는 사람들의 목록 페이지로 연결해주는 컨트롤러 클래스이다.
 *	@author	박기윤
 *	@since	2020.05.28
 */
import java.util.*;
import javax.servlet.http.*;
import com.pageturner.www.controller.*;
import com.pageturner.www.dao.*;
import com.pageturner.www.vo.*;

public class Fallow implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/mypage/fallow.jsp";
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (Exception e) {}
		int fallower_no = Integer.parseInt(req.getParameter("mno"));
		MyPageDAO mpDAO = new MyPageDAO();
		String id = mpDAO.getId(fallower_no);
		ArrayList<FallowVO> list = mpDAO.getFallowList(fallower_no);
		req.setAttribute("LIST", list);
		req.setAttribute("pid", id);
		
		return view;
	}

}
