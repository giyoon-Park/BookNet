package com.pageturner.www.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.pageturner.www.DB.WebDBCP;
import com.pageturner.www.sql.BookSQL;
import com.pageturner.www.vo.memberVO;

public class MemberDAO {
	WebDBCP db;
	BookSQL bSQL;
	Connection con;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;

	public MemberDAO() {
		db = new WebDBCP();
		bSQL = new BookSQL();
	}

	// 회원가입
	public int addUser(memberVO mVO) {
		int cnt = 0;
		con = db.getCon();
		String sql = bSQL.getSQL(bSQL.ADD_USER);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1, mVO.getId());
			pstmt.setString(2, mVO.getPw());
			pstmt.setString(3, mVO.getName());
			pstmt.setString(4, mVO.getNickname());
			pstmt.setString(5, mVO.getBirthdate());
			pstmt.setString(6, mVO.getGen());
			pstmt.setString(7, mVO.getMail());
			pstmt.setString(8, mVO.getTel());
			pstmt.setString(9, mVO.getInterest());
			pstmt.setString(10, mVO.getDescribe());

			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}

		return cnt;
	}

	// 로그인처리 전담함수
	public int execLogin(String id, String pw) {
		int cnt = 0;

		con = db.getCon();
		String sql = bSQL.getSQL(bSQL.SEL_LOGIN);
		pstmt = db.getPSTMT(con, sql);
		System.out.println(sql);
		try {
			// 질의명령 완성해주기
			pstmt.setString(1, id);
			pstmt.setString(2, pw);

			// 질의명령보내기
			rs = pstmt.executeQuery();
			rs.next();
			// 결과값 받기
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
}
