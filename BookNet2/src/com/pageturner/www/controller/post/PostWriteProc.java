package com.pageturner.www.controller.post;
/**
 * 이 클래스는 게시글 제출 버튼 이벤트 후 진행되는 디비작업 요청에 대한 컨트롤러입니다.
 * @author leeseulkim
 * @since 25th May 2020
 * 
 */
import java.util.*;
import javax.servlet.http.*;
import javax.swing.JOptionPane;

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
		
		//세션에 저장되어있는 id 값 불러오기
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("SID");
		
		if(id == null || id.length() == 0) {
			//재로그인하게 하기 
			view = "/BookNet/member/login.cls";
		}
		
		//파라미터 가져오기 
		String sbno = req.getParameter("bno");
		String body = req.getParameter("body");
		String seno = req.getParameter("eno");
		String stags = req.getParameter("tags");
		System.out.println(stags);
		
		int bno = 0;
		int eno = 0;
		
		try {
			bno = Integer.parseInt(sbno);
			eno = Integer.parseInt(seno);
		} catch(Exception e) {
			e.printStackTrace();
		}

		//데이터베이스 작업하기
		//해시태그를 db에 올리기 전에 이미 게시글 등록이 끝나야한다.
		PostsDAO dao = new PostsDAO();
		
		int cnt = dao.addPost(id, bno, body, eno);
		System.out.println(cnt);
		
		if(cnt != 1) {
			//게시글을 업로드 하지 못함  
			//창을 띄워 알려주기 
			JOptionPane.showMessageDialog(null, "게시글 업로드에 실패하였습니다.");
		}
		
		if(stags.length() != 0) {
			//문자열 잘라주는 함수호출 
			ArrayList<String> list = splitStr(stags);
			
			int len = list.size();
			System.out.println(len);
			int rst;
			for(int i = 0; i < len; i++) {
				rst = 0;
				rst = dao.addHashTags(list.get(i));
				//해시태그 테이블에 해시태그 insert 
				System.out.println(rst);
			}
			System.out.println("완료?");
		}
			
		return view;
	}
	
	//문자열 잘라주는 함수
	public ArrayList<String> splitStr(String stags){
		ArrayList<String> list = new ArrayList<String>();
		
		StringTokenizer str = new StringTokenizer(stags, " ");
		
		while(str.hasMoreElements()) {
			list.add(str.nextToken());
		}
		
		return list;
	}

}
