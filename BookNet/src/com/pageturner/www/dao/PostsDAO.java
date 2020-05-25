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
	PostsVO vo;
	
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
			//질의명령 보내기
			rs = stmt.executeQuery(sql);
			//결과받기 
			while(rs.next()) {
				vo = new PostsVO();
				
				//데이터 담기 
				vo.setPno(rs.getInt("pno"));
				vo.setId(rs.getString("id"));
				vo.setBname(rs.getString("bname"));
				vo.setPostcont(rs.getString("postcont"));
				vo.setPostDate(rs.getDate("postdate"));
				vo.setPostTime(rs.getTime("postdate"));
				vo.setPdate();
//				vo.setEmotion(rs.getString("emotion"));
				vo.setLargeimg(rs.getString("largeimg"));
				vo.setGname(rs.getString("gname"));
				vo.setHash(rs.getString("hash"));
				
				//담은 데이터(vo 클래스)를 리스트에 담기 
				list.add(vo);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(stmt);
			db.close(con);
		}
		return list;
	}
	
	//게시글작성시 도서검색결과를 보여줄 데이터베이스 전담 처리함수
	public ArrayList<PostsVO> getSearchRst(String word){
		ArrayList<PostsVO> list = new ArrayList<PostsVO>();
		
		con = db.getCon();
		
		String sql = bSQL.getSQL(bSQL.POST_SEARCH_BOOK);
		
		pstmt = db.getPSTMT(con, sql);
		
		//매개변수 자체를 바로 ? 입력시키면 매개변수에 맞는 결과만 검색된다. 
		String searchWord = "%" + word + "%";
		System.out.println(searchWord);
		
		try {
			//질의명령 완성
			pstmt.setString(1, searchWord);
			pstmt.setString(2, searchWord);
			pstmt.setString(3, searchWord);
			
			System.out.println(sql);
			//질의명령 보내기 
			rs = pstmt.executeQuery();
			
			//결과받기 
			while(rs.next()) {
				PostsVO vo = new PostsVO();
				//뽑은 데이터를 vo 클래스에 담기 
				vo.setBno(rs.getInt("bno"));
				vo.setGname(rs.getString("gname"));
				vo.setBname(rs.getString("bname"));
				vo.setWriter(rs.getString("writer"));
				vo.setTrans(rs.getString("trans"));
				vo.setLargeimg(rs.getString("largeimg"));
				vo.setPublish(rs.getString("publish"));
				
				//리스트에 담기
				list.add(vo);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return list;
	}
	
	//작성한 게시글을 데이터베이스에 보내줄 처리 전담함수
	public int addPost(String id, int bno, String body, int eno) {
		int cnt = 0;
		
		con = db.getCon();
		String sql = bSQL.getSQL(bSQL.ADD_POSTS);
		pstmt = db.getPSTMT(con, sql);
		System.out.println(sql);
		try {
			//질의명령 완성 
			pstmt.setString(1, id);
			pstmt.setInt(2, bno);
			pstmt.setString(3, body);
			pstmt.setInt(4, eno);
			
			//질의명령 실어서 보내기 
			cnt = pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		
		return cnt;
	}
	
	//게시글 작성시 작성한 해시태그를 보내줄 처리 전담함수
	public int addHashTags(String hname) {
		int cnt = 0;
		
		con = db.getCon();
		String sql = bSQL.getSQL(bSQL.PUT_TAGS);
		pstmt = db.getPSTMT(con, sql);
		System.out.println(sql);
		try {
			pstmt.setString(1, hname);
			
			cnt = pstmt.executeUpdate();
			System.out.println(cnt);
		} catch(Exception e) {
			System.out.println("###");
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		return cnt;
	}
}