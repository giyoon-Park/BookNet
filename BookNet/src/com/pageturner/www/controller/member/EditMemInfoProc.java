package com.pageturner.www.controller.member;

/**
 * 회원 정보수정 처리
 * @author	이명환
 * @since	2020.05.26
 * 
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.pageturner.www.controller.PageController;
import com.pageturner.www.dao.MemberDAO;
import com.pageturner.www.vo.ProfileVO;

public class EditMemInfoProc implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/mypage/mypage.cls";
		req.setAttribute("isRedirect", true);
		String sid = (String) req.getSession().getAttribute("SID");
		
		String pw = req.getParameter("pw");
		String mail = req.getParameter("mail");
		String tel = req.getParameter("tel");
		String interest = req.getParameter("interest");
		String nickname = req.getParameter("nickname");
		String describe = req.getParameter("describe");
		String intershow = req.getParameter("intershow");
		String birthshow = req.getParameter("birthshow");
		String genshow = req.getParameter("genshow");
		
		
		MemberDAO mDAO = new MemberDAO();
		int cnt = mDAO.editUser(pw, mail, tel, interest, nickname, describe, intershow, birthshow, genshow);
		
		if(cnt != 1) {	// 에러페이지로 보내짐
			view = "/main/error.cls";
			return view;
		}
		
		// ori_name 뽑아야댐
		// 저장경로 가져오고
		String path = req.getSession().getServletContext().getRealPath("profileimg");
		// 스트림방식으로 전송된 데이터를 파라미터 방식으로 변환시킨다
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(req, path, 1024 * 1024 * 10, "UTF-8", new DefaultFileRenamePolicy());
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		ProfileVO pVO = new ProfileVO();
		pVO.setId(sid);
		pVO.setMulti(multi);
		boolean bool = mDAO.addImgInfo(pVO);
		if(!bool) {
			view = "/main/error.cls";
			return view;
		}
		
		return view;
	}

}
