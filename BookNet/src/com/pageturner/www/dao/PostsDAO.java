package com.pageturner.www.dao;
/**
 * 이 클래스는 게시글관련한 데이터베이스 작업을 위한 클래스입니다.
 * @author leeseulkim
 *
 */

import java.sql.*;
import java.util.*;

import com.pageturner.www.DB.*;
import com.pageturner.www.vo.*;
import com.pageturner.www.sql.*;

public class PostsDAO {
	WebDBCP db;
	Connection con;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	BookSQL bSQL;
	PostsVO pVO;
	
	public PostsDAO() {
		db = new WebDBCP();
		bSQL = new BookSQL();
	}
	
	//비회원 메인페이지에 들어갈 모든 게시물에 대한 리스트 전담처리 함수 
	public ArrayList<PostsVO> getAllList(){
		//비회원이므로 매개변수 필요없음
		ArrayList<PostsVO> list = new ArrayList<PostsVO>();
		
		con = db.getCon();
		String sql = bSQL.getSQL(bSQL.SEL_ALL_POST);
		stmt = db.getSTMT(con);
		
		try {
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(stmt);
			db.close(con);
		}
		return list;
	}
}