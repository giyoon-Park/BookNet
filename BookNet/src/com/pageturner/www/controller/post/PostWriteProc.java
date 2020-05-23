package com.pageturner.www.controller.post;

import javax.servlet.http.*;

import com.pageturner.www.controller.*;
import com.pageturner.www.dao.*;
import com.pageturner.www.util.*;
import com.pageturner.www.vo.*;

public class PostWriteProc implements PageController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/main/main.cls";
		req.setAttribute("isRedirect", true);
		/*
		 	글 작성 버튼을 눌렀던 페이지로 redirect 시켜주어야한다.
		 */
		
		
		
		return view;
	}

}
