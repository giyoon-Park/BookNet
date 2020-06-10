package com.pageturner.www.controller.post;
/**
 * 이 클래스는 댓글추가와 관련한 컨트롤러입니다.
 * @author leeseulkim
 * @since 27th May 2020
 * 
 */
import java.text.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.pageturner.www.controller.*;
import com.pageturner.www.dao.*;

public class AddRplProc implements PageController {
	
	Date date = new Date(); //현재시간을 받게됨.
	
	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("########");
		resp.setCharacterEncoding("UTF-8");
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
		SimpleDateFormat form1 = new SimpleDateFormat("yy/MM/dd");
		SimpleDateFormat form2 = new SimpleDateFormat("HH:mm:ss");
		String str = form1.format(date) + " " + form2.format(date);
		
		CommentDAO dao = new CommentDAO();
		int cnt = dao.addComment(pno, cbody, id);
		
		StringBuffer buff = new StringBuffer();
		buff.append("{");
		buff.append("\"cnt\": " + cnt + ",");
		buff.append("\"id\": \"" + id + "\",");
		buff.append("\"body\": \"" + cbody +"\",");
		buff.append("\"date\": \"" + str + "\"");
		buff.append("}");
		System.out.println(buff.toString());
		
		return buff.toString();
	}

}
