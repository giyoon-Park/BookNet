package com.pageturner.www.controller;
/**
 * 	이 클래스는 디스패치 컨트롤러에서 요청을 처리할 때 사용할 클래스들의
 * 	다형성 구현을 위해서 만든 인터페이스
 * @author	박기윤
 * @since	2020.05.11
 */
import javax.servlet.http.*;

public interface PageController {
	String exec(HttpServletRequest req, HttpServletResponse resp);
}
