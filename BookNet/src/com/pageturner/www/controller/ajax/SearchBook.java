package com.pageturner.www.controller.ajax;

//import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import com.pageturner.www.util.*;
//import com.pageturner.www.vo.*;

@WebServlet("/ajax/searchBook.sb")
public class SearchBook extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse resp) {		
		//ajax 파라미터 받기 
		String searchWord = req.getParameter("searchWord");
		
		System.out.println("########" + searchWord);
		
		int code = 1001;
		
		//인터파크api에 매개변수를 보내고 결과받기 
		InterParkAPI iApi = new InterParkAPI(code, searchWord);
		//json 형식으로 파싱완료 
	}
}
