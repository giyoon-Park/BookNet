package com.pageturner.www.dao;

/**
 * 이 클래스는 댓글관련 데이터베이스 처리를 담당하는 클래스입니다.
 * @author leeseulkim
 * @since 27th May 2020
 *
 */
import java.sql.*;
import java.util.*;
import org.json.simple.*;

import com.pageturner.www.DB.*;
import com.pageturner.www.vo.*;
import com.pageturner.www.sql.*;

public class CommentDAO {
	WebDBCP db;
	Connection con;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	CommentSQL cSQL;
	CommentVO vo;

	public CommentDAO() {
		db = new WebDBCP();
		cSQL = new CommentSQL();
	}

	// 게시글 내에 달린 댓글리스트 처리 전담함수
	public JSONArray showListRpl(int pno) {
		JSONArray list = new JSONArray();

		con = db.getCon();
		String sql = cSQL.getSQL(cSQL.SHOW_RPL);
		pstmt = db.getPSTMT(con, sql);

		try {
			pstmt.setInt(1, pno);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				CommentVO vo = new CommentVO();
				vo.setCno(rs.getInt("cno"));
				vo.setPno(rs.getInt("pno"));
				vo.setMno(rs.getInt("mno"));
				vo.setRno(rs.getInt("rno"));
				vo.setId(rs.getString("id"));
				vo.setComnt(rs.getString("comnt"));
				vo.setCdate(rs.getDate("cdate"));
				vo.setCtime(rs.getTime("cdate"));
				vo.setSdate();

				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return list;
	}
	
	//댓글 달아주는 처리 전담함수
	public int addComment(int pno, String body, String id) {
		int cnt = 0;
		
		con = db.getCon();
		String sql = cSQL.getSQL(cSQL.ADD_RPL);
		pstmt = db.getPSTMT(con, sql);
		System.out.println(sql);
		try {
			pstmt.setInt(1, pno);
			pstmt.setString(2, body);
			pstmt.setString(3, id);
			
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			System.out.println("에러");
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		
		return cnt;
	}
	
	//게시글 삭제 전담처리함수
	public int delPost(int pno) {
		int cnt = 0;
		
		con = db.getCon();
		String sql = cSQL.getSQL(cSQL.DEL_POST);
		pstmt = db.getPSTMT(con, sql);
		System.out.println(sql);
		
		try {
			pstmt.setInt(1, pno);
			
			cnt = pstmt.executeUpdate();
			System.out.println(cnt);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		
		return cnt;
	}
}
