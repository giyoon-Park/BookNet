package com.pageturner.www.dao;
/**
 *	이 클래스는 mypage 및 하위페이지(팔로우페이지, 팔로워페이지), 알람페이지
 *	에서 db 작업을 수행할 DAO 클래스이다.
 *	@author	박기윤
 *	@since 2020.05.25
 */
import java.sql.*;
import java.util.*;
import java.text.*;
import com.pageturner.www.vo.*;
import com.pageturner.www.DB.*;
import com.pageturner.www.sql.*;

public class MyPageDAO {
	WebDBCP db;
	Connection con;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	MyPageSQL mpSQL;
	AlarmSQL aSQL;
	String id;
	int mno;
	SimpleDateFormat formD;
	SimpleDateFormat formT;
	
	public MyPageDAO() {
		db = new WebDBCP();
		mpSQL = new MyPageSQL();
	}
	public MyPageDAO(String id) {
		db = new WebDBCP();
		mpSQL = new MyPageSQL();
		this.id = id;
		mno = getMno(id);
		aSQL = new AlarmSQL();
		formD = new SimpleDateFormat("yyyy-MM-dd");
		formT = new SimpleDateFormat("HH:mm:ss");
	}

	// mypage에 공개한 회원정보를 db에서 불러오는 함수
	public MemberVO getMemInfo(String sid) {
		MemberVO mVO = new MemberVO();
		con = db.getCon();
		String sql = mpSQL.getSQL(mpSQL.SEL_MEM_INFO);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1, sid);
			pstmt.setInt(2, mno);
			rs = pstmt.executeQuery();
			rs.next();
			mVO.setId(rs.getString("id"));
			mVO.setNickname(rs.getString("nickname"));
			mVO.setDescribe(rs.getString("describe"));
			if(rs.getString("intershow").equals("Y")) {
				mVO.setInterest(rs.getString("interest"));
			}
			if(rs.getString("birthshow").equals("Y")) {
				mVO.setMdate(rs.getDate("birthdate"));
				mVO.setMtime(rs.getTime("birthdate"));
				mVO.setBirthdate();
			}
			if(rs.getString("genshow").equals("Y")) {
				mVO.setGen(rs.getString("gen"));
			}
			if(rs.getString("isinflu").equals("Y")) {
				mVO.setIsinflu(rs.getString("isinflu"));
			}
			mVO.setSave_name(rs.getString("save_name"));
			mVO.setSave_loc(rs.getString("save_loc"));
			mVO.setIscheck(rs.getString("ischeck"));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return mVO;
	}
	
	// id로 mno를 찾는 함수
	public int getMno(String id) {
		int idmno = 0;
		con = db.getCon();
		String sql = mpSQL.getSQL(mpSQL.SEL_MEM_MNO);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();
			idmno = Integer.parseInt(rs.getString("mno"));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return idmno;
	}
	
	// mno로 id를 찾는 함수
	public String getId(int mno) {
		String id = null;
		con = db.getCon();
		String sql = mpSQL.getSQL(mpSQL.SEL_MEM_ID);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setInt(1, mno);
			rs = pstmt.executeQuery();
			rs.next();
			id = rs.getString("id");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return id;
	}
	
	// 회원이 작성한 게시글중 최신글을 불러오는 함수
	public ArrayList<PostsVO> getPosts() {
		ArrayList<PostsVO> list = new ArrayList<PostsVO>();
		con = db.getCon();
		String sql = mpSQL.getSQL(mpSQL.SEL_POST_LIST);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setInt(1, mno);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				PostsVO pVO = new PostsVO();
				pVO.setPno(rs.getInt("pno"));
				pVO.setPostcont(rs.getString("postcont"));
				pVO.setPostDate(rs.getDate("postdate"));
				pVO.setPostTime(rs.getTime("postdate"));
				pVO.setPdate();
				pVO.setBname(rs.getString("bname"));
				pVO.setWriter(rs.getString("writer"));
				pVO.setLinkno(rs.getInt("linkno"));
				pVO.setId(rs.getString("id"));
				pVO.setIscheck(rs.getString("ischeck"));
				list.add(pVO);
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
	
	// 작성한 게시글의 갯수를 불러오는 함수
	public int cntPosts() {
		int cnt = 0;
		con = db.getCon();
		String sql = mpSQL.getSQL(mpSQL.CNT_POST);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setInt(1, mno);
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
	
	// 좋아요 체크를 한 게시물을 최신순으로 불러오는 함수
	public ArrayList<PostsVO> getLikedPosts() {
		ArrayList<PostsVO> list = new ArrayList<PostsVO>();
		con = db.getCon();
		String sql = mpSQL.getSQL(mpSQL.SEL_LIKE_LIST);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setInt(1, mno);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				PostsVO pVO = new PostsVO();
				pVO.setPno(rs.getInt("pno"));
				pVO.setPostcont(rs.getString("postcont"));
				pVO.setPostDate(rs.getDate("postdate"));
				pVO.setPostTime(rs.getTime("postdate"));
				pVO.setPdate();
				pVO.setBname(rs.getString("bname"));
				pVO.setWriter(rs.getString("writer"));
				pVO.setLinkno(rs.getInt("linkno"));
				pVO.setId(rs.getString("id"));
				pVO.setIscheck(rs.getString("ischeck"));
				list.add(pVO);
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
	
	//팔로우 리스트를 불러오는 함수
	public ArrayList<FallowVO> getFallowList(int mno) {
		ArrayList<FallowVO> list = new ArrayList<FallowVO>();
		con = db.getCon();
		String sql = mpSQL.getSQL(mpSQL.SEL_FALLOW_LIST);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setInt(1, mno);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				FallowVO fVO = new FallowVO();
				fVO.setFallower_no(rs.getInt("mno"));
				fVO.setId(rs.getString("id"));
				fVO.setSname(rs.getString("sname"));
				fVO.setSloc(rs.getString("sloc"));
				list.add(fVO);
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
	
	//팔로워 리스트를 불러오는 함수
	public ArrayList<FallowVO> getFallowerList(int mno) {
		ArrayList<FallowVO> list = new ArrayList<FallowVO>();
		con = db.getCon();
		String sql = mpSQL.getSQL(mpSQL.SEL_FALLOWER_LIST);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setInt(1, mno);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				FallowVO fVO = new FallowVO();
				fVO.setFallow_no(rs.getInt("mno"));
				fVO.setId(rs.getString("id"));
				fVO.setSname(rs.getString("sname"));
				fVO.setSloc(rs.getString("sloc"));
				list.add(fVO);
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
	
	// 팔로우하고 있는 사용자의 수를 불러오는 함수
	public int cntFallow() {
		int cnt = 0;
		con = db.getCon();
		String sql = mpSQL.getSQL(mpSQL.CNT_FALLOW);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setInt(1, mno);
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
	
	// 팔로워 수를 불러오는 함수
	public int cntFallower() {
		int cnt = 0;
		con = db.getCon();
		String sql = mpSQL.getSQL(mpSQL.CNT_FALLOWER);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setInt(1, mno);
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
	
	// 좋아요 알람 리스트를 불러오는 함수
	public ArrayList<AlarmVO> getLikeAlarm() {
		ArrayList<AlarmVO> list = new ArrayList<AlarmVO>();
		con = db.getCon();
		String sql = aSQL.getSQL(aSQL.SEL_LIKE);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				AlarmVO aVO = new AlarmVO();
				aVO.setType("L");
				aVO.setDate(rs.getDate("lk_time"));
				aVO.setTime(rs.getTime("lk_time"));
				aVO.setExtime();
				aVO.setPno(rs.getInt("pno"));
				aVO.setBname(rs.getString("bname"));
				aVO.setId(rs.getString("id"));
				aVO.setSave_loc(rs.getString("save_loc"));
				list.add(aVO);
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
	
	// 댓글 알람 리스트를 불러오는 함수
	public ArrayList<AlarmVO> getComntAlarm() {
		ArrayList<AlarmVO> list = new ArrayList<AlarmVO>();
		con = db.getCon();
		String sql = aSQL.getSQL(aSQL.SEL_COMNT);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				AlarmVO aVO = new AlarmVO();
				aVO.setType("C");
				aVO.setDate(rs.getDate("cdate"));
				aVO.setTime(rs.getTime("cdate"));
				aVO.setExtime();
				aVO.setPno(rs.getInt("pno"));
				aVO.setBname(rs.getString("bname"));
				aVO.setId(rs.getString("id"));
				aVO.setSave_loc(rs.getString("save_loc"));
				list.add(aVO);
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
	
	// 팔로우 알람 리스트를 불러오는 함수
	public ArrayList<AlarmVO> getFalAlarm() {
		ArrayList<AlarmVO> list = new ArrayList<AlarmVO>();
		con = db.getCon();
		String sql = aSQL.getSQL(aSQL.SEL_FAL);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				AlarmVO aVO = new AlarmVO();
				aVO.setType("F");
				aVO.setDate(rs.getDate("fal_time"));
				aVO.setTime(rs.getTime("fal_time"));
				aVO.setExtime();
				aVO.setId(rs.getString("id"));
				aVO.setSave_loc("save_loc");
				list.add(aVO);
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
	
	// 팔로우하기 함수
	public int newFallow(String sid) {
		int cnt = 0;
		con = db.getCon();
		String sql = mpSQL.getSQL(mpSQL.NEW_FAL);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setInt(1, mno);
			pstmt.setString(2, sid);
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		return cnt;
	}
	
	// 언팔로우하기 함수
	public int unFallow(String sid) {
		int cnt = 0;
		con = db.getCon();
		String sql = mpSQL.getSQL(mpSQL.UN_FAL);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setInt(1, mno);
			pstmt.setString(2, sid);
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		return cnt;
	}
	
	// 다시 팔로우하기 함수
	public int reFallow(String sid) {
		int cnt = 0;
		con = db.getCon();
		String sql = mpSQL.getSQL(mpSQL.RE_FAL);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setInt(1, mno);
			pstmt.setString(2, sid);
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