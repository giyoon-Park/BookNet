package com.pageturner.www.controller.member;

import java.util.ArrayList;

/**
 * 회원 정보수정 페이지 요청
 * @author	이명환
 * @since	2020.05.26
 * 
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pageturner.www.controller.PageController;
import com.pageturner.www.dao.MemberDAO;
import com.pageturner.www.vo.MemberVO;

public class EditMemInfo implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/member/editMemInfo.jsp";
		String sid = (String) req.getSession().getAttribute("SID");
		
		MemberDAO mDAO = new MemberDAO();
		ArrayList<MemberVO> list = mDAO.selUser(sid);
		
		req.setAttribute("LIST", list);
		return view;
	}

}
