package com.pageturner.www.dao;
/**
 * 이 페이지는 검색페이지를 위한 문서입니다
 * @author 서동혁
 * @version v.0.1.0
 * @since 2020.05.28
 * 
 */

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.pageturner.www.DB.*;
import com.pageturner.www.sql.*;
import com.pageturner.www.vo.*;

public class SearchDAO {
	WebDBCP db;
	Connection con;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	SearchSQL sSQL;
	SearchVO vo;

	public SearchDAO() {
		db = new WebDBCP();
		sSQL = new SearchSQL();
	}
	// 검색어 담을 리스트 처리 함수
	public ArrayList<SearchVO> getAllList(String keyword) {
		ArrayList<SearchVO> list = new ArrayList<SearchVO>();
		//커낵션 가져오기
		con = db.getCon();
		// 질의명령 가져오기
		String sql = sSQL.getSQL(sSQL.SEL_ALL_SRC);
		// pstmt가져오기
		pstmt = db.getPSTMT(con, sql);

		try {
			// 질의명령 의 '?' 완성하고
			pstmt.setString(1, keyword);
			pstmt.setString(2, keyword);
			pstmt.setString(3, keyword);
			pstmt.setString(4, keyword);
			pstmt.setString(5, keyword);
			pstmt.setString(6, keyword);
			pstmt.setString(7, keyword);
			pstmt.setString(8, keyword);
			pstmt.setString(9, keyword);
			//질의명령 꺼내고 내보내기
			rs = pstmt.executeQuery();
			System.out.println(rs);
			// 한칸 내려서 반복해서 뽑고
			while (rs.next()) {
				SearchVO vo = new SearchVO();
				vo.setBname(rs.getString("bname"));
				vo.setHash(rs.getString("hash"));
				vo.setWriter(rs.getString("writer"));
				vo.setTrans(rs.getString("trans"));
				vo.setGname(rs.getString("gname"));
				vo.setNickname(rs.getString("name"));
				vo.setId(rs.getString("id"));
				vo.setNickname(rs.getString("nickname"));
				vo.setPublish(rs.getString("publish"));
				vo.setPostcont(rs.getString("postcont"));
				vo.setPostcont(); // 본문내용 \r\n는 <br>로 교체
				vo.setProfile(rs.getString("profile"));
				vo.setLimg(rs.getString("limg"));

				// 한줄씩 vo에 담기
				list.add(vo);
			}
		} catch (Exception e) {
			System.out.println("DAO 오류");
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		//리스트 내보내기
		return list;
	}

}