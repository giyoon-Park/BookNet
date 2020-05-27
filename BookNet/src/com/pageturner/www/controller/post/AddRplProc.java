package com.pageturner.www.controller.post;

import javax.servlet.*;
import javax.servlet.http.*;

import com.pageturner.www.controller.*;
import com.pageturner.www.dao.*;

public class AddRplProc implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("########");
		//ajax 요청
		req.setAttribute("isRedirect", null);
		
		//세션내 저장된 id 확인
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("SID");
		
		//파라미터값 받기 
		String cbody = req.getParameter("cbody");
		String spno = req.getParameter("pno");
		int pno = 0;
		
		try {
			pno = Integer.parseInt(spno);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		CommentDAO dao = new CommentDAO();
		int cnt = dao.addComment(pno, cbody, id);
		
		StringBuffer buff = new StringBuffer();
		buff.append("{");
		buff.append("\"cnt\": " + cnt + "");
		buff.append("}");
		System.out.println(buff.toString());
		
		return buff.toString();
	}

}
