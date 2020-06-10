package com.pageturner.www.controller.ajax;

/**
 * 메일인증번호 발송 처리
 * @author	이명환
 * @since	2020.05.26
 */
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pageturner.www.controller.PageController;
import com.pageturner.www.util.MailUtil;

public class MailProc implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
//		String view = "/member/findID.jsp";
		req.setAttribute("isRedirect", null);
		String str = "";
		
		MailUtil mUtil = new MailUtil("myeongwhan@gmail.com", "wnals106!");
		
		//인증 번호 생성기
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for(int i=0;i<10;i++){
			int rIndex = rnd.nextInt(3);
	        switch (rIndex) {
	        case 0:
	            // a-z
	            temp.append((char) ((int) (rnd.nextInt(26)) + 97));
	            break;
	        case 1:
	            // A-Z
	            temp.append((char) ((int) (rnd.nextInt(26)) + 65));
	            break;
	        case 2:
	            // 0-9
	            temp.append((rnd.nextInt(10)));
	            break;
	        }
	    }
	    String cout = temp.toString();
//      System.out.println(AuthenticationKey);
		
        mUtil.getSend(req.getParameter("mail"), cout);
		
        str = "{\"tno\": \"" + cout + "\"}";
        
//        str = "12345";
        
		return str;
	}

}