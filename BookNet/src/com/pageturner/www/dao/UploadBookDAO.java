package com.pageturner.www.dao;
/**
 *	이 클래스는 db에 연결하여 도서 및 출판사 정보 유무를 확인, 정보를 추가할 수 있는
 *	DAO 클래스이다.
 *	@author	박기윤
 *	@since	2020.05.27
 */
import java.sql.*;
import java.util.*;
import com.pageturner.www.DB.*;
import com.pageturner.www.sql.*;
import com.pageturner.www.vo.*;

public class UploadBookDAO {
	WebDBCP db;
	Connection con;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	UploadBookSQL upSQL;
	
	public UploadBookDAO() {
		db = new WebDBCP();
		upSQL = new UploadBookSQL();
	}
	
	public int ckPublish(String publish) {
		int cnt = 0;
		con = db.getCon();
		String sql = upSQL.getSQL(upSQL.SEL_PUB);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1, publish);
			rs = pstmt.executeQuery();
			rs.next();
			cnt = rs.getInt("cnt");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return cnt;
	}
	
	public int ckBook(String isbn) {
		int cnt = 0;
		con = db.getCon();
		String sql = upSQL.getSQL(upSQL.SEL_BOOK);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1, isbn);
			rs = pstmt.executeQuery();
			rs.next();
			cnt = rs.getInt("cnt");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return cnt;
	}
	
	public int insertPublish(BookVO bVO) {
		int cnt = 0;
		con = db.getCon();
		String sql = upSQL.getSQL(upSQL.INS_PUB);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1, bVO.getPublisher());
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		return cnt;
	}
	
	public int insertBook(BookVO bVO) {
		int cnt = 0;
		con = db.getCon();
		String sql = upSQL.getSQL(upSQL.INS_BOOK);
		pstmt = db.getPSTMT(con, sql);
		
		try {
			pstmt.setString(1, bVO.getTitle());
			pstmt.setInt(2, bVO.getCategoryId());
			pstmt.setString(3, bVO.getAuthor());
			pstmt.setString(4, bVO.getTranslator());
			pstmt.setString(5, bVO.getCvrsUrl());
			pstmt.setString(6, bVO.getCvrlUrl());
			pstmt.setString(7, bVO.getIsbn());
			pstmt.setString(8, bVO.getPublisher());
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		
		return cnt;
	}
}