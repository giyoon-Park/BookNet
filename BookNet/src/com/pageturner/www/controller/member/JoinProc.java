package com.pageturner.www.controller.member;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pageturner.www.controller.PageController;
import com.pageturner.www.dao.MemberDAO;
import com.pageturner.www.vo.MemberVO;

public class JoinProc implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/main/main.cls";
		req.setAttribute("isRedirect", true);
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String name = req.getParameter("name");
		String nickname = req.getParameter("nickname");
		String yy = req.getParameter("yy");
		String mm = req.getParameter("mm");
		String dd = req.getParameter("dd");
		String gen = req.getParameter("gen");
		String mail = req.getParameter("mail");
		String tel = req.getParameter("tel");
		String interest = req.getParameter("interest");
		String describe = req.getParameter("describe");
		String yymmdd = yy + mm + dd;
		
		MemberVO mVO = new MemberVO();
		mVO.setId(id);
		mVO.setPw(pw);
		mVO.setName(name);
		mVO.setNickname(nickname);
		mVO.setBirthdate(yymmdd);
		mVO.setGen(gen);
		mVO.setMail(mail);
		mVO.setTel(tel);
		mVO.setInterest(interest);
		mVO.setDescribe(describe);
		
		MemberDAO mDAO = new MemberDAO();
		int cnt = mDAO.addUser(mVO);
		if(cnt != 1) {	// 에러
			view = "/BookNet/main/error.cls";
			return view;
		}
		
		req.getSession().setAttribute("id", id);
		
		return view;
	}

}
