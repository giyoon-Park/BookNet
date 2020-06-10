package com.pageturner.www.dao;

import java.io.File;
/**
 * 회원관련 db처리 전담함수들
 * @author 이명환
 * @since 2020.05.25
 * 
 */
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Enumeration;

import com.oreilly.servlet.MultipartRequest;
import com.pageturner.www.DB.WebDBCP;
import com.pageturner.www.sql.BookSQL;
import com.pageturner.www.vo.MemberVO;
import com.pageturner.www.vo.ProfileVO;

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
	public int addUser(MemberVO mVO) {
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
	
	// 아이디찾기
	public MemberVO findID(String name, String mail) {
		MemberVO mVO = new MemberVO();
		con = db.getCon();
		String sql = bSQL.getSQL(bSQL.FIND_ID);
		pstmt = db.getPSTMT(con, sql);
		
		try {
			pstmt.setString(1, name);
			pstmt.setString(2, mail);
			rs = pstmt.executeQuery();
			rs.next();
			
			mVO.setId(rs.getString("id"));
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		
		return mVO;
	}
	
	// 비밀번호찾기
	public MemberVO findPW(String id, String name, String mail) {
		MemberVO mVO = new MemberVO();
		con = db.getCon();
		String sql = bSQL.getSQL(bSQL.FIND_PW);
		pstmt = db.getPSTMT(con, sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, mail);
			
			rs = pstmt.executeQuery();
			rs.next();
			mVO.setPw(rs.getString("pw"));
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		
		return mVO;
	}
	
	// 회원정보조회
	public ArrayList<MemberVO> selUser(String id) {
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		con = db.getCon();
		String sql = bSQL.getSQL(bSQL.SEL_USER);
		pstmt = db.getPSTMT(con, sql);
		
		try {
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();
			MemberVO mVO = new MemberVO();
			mVO.setPw(rs.getString("pw"));
			mVO.setMail(rs.getString("mail"));
			mVO.setTel(rs.getString("tel"));
			mVO.setInterest(rs.getString("interest"));
			mVO.setNickname(rs.getString("nickname"));
			mVO.setDescribe(rs.getString("describe"));
			mVO.setIntershow(rs.getString("intershow"));
			mVO.setBirthshow(rs.getString("birthshow"));
			mVO.setGenshow(rs.getString("genshow"));
			
			// ori_name 뽑아야댐
			
			list.add(mVO);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		
		return list;
	}
	
	// 회원정보수정
	public int editUser(String pw, String mail, String tel, 
					String interest, String nickname, String describe, 
					String intershow, String birthshow, String genshow) {
		int cnt = 0;
		con = db.getCon();
		String sql = bSQL.getSQL(bSQL.EDIT_USER);
		pstmt = db.getPSTMT(con, sql);
		
		try {
			pstmt.setString(1, pw);
			pstmt.setString(2, mail);
			pstmt.setString(3, tel);
			pstmt.setString(4, interest);
			pstmt.setString(5, nickname);
			pstmt.setString(6, describe);
			pstmt.setString(7, intershow);
			pstmt.setString(8, birthshow);
			pstmt.setString(9, genshow);
			
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		
		return cnt;
	}
	
	// 게시판 파일 정보 등록 전담처리 함수
	public boolean addImgInfo(ProfileVO pVO) {
		boolean bool = false;
		int cnt = 0;	// 업로드된(multiPartRequest) 파일 개수
		int result = 0;	// db에 추가된 행 수
		
		con = db.getCon();
		String sql = bSQL.getSQL(bSQL.ADD_PROFILE);
		
		// 데이터 만들고
		MultipartRequest multi = pVO.getMulti();
		
		Enumeration en = multi.getFileNames();
		while(en.hasMoreElements()) {
			pstmt = db.getPSTMT(con, sql);
			// 업로드된 파일의 키(name)값을 알아내고
			String key = (String) en.nextElement();
			// 해당 키값을 가지고 있는 파일 이름을 알아낸다
			String ori_name = multi.getOriginalFileName(key);
//			System.out.println("key : " + key);
//			System.out.println("ori_name : " + ori_name);
			if(ori_name == null || ori_name.length() == 0) {
				// 이 경우는 파일을 선택하지 않은 경우이므로 다음 회차로 진행한다
					
				continue;
			}
				
			String save_name = multi.getFilesystemName(key);
			File file = multi.getFile(key);
			long len = file.length();
			try {
				// 질의명령 완성하고
				pstmt.setString(1, pVO.getId());
				pstmt.setString(2, ori_name);
				pstmt.setString(3, save_name);
				pstmt.setLong(4, len);
				
				cnt++;
				// 보내고 결과받고
				result += pstmt.executeUpdate();
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				db.close(pstmt);
			}
		}
		
		db.close(con);
		if(cnt == result) {
			bool = true;
		}
		
		return bool;
	}
	
	// 회원탈퇴처리
	public int delUser(String id) {
		int cnt = 0;
		con = db.getCon();
		String sql = bSQL.getSQL(bSQL.DEL_USER);
		pstmt = db.getPSTMT(con, sql);
		
		try {
			pstmt.setString(1, id);
			
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		
		return cnt;
	}
	
	// 게시글에 좋아요 처리
	public int addLike(int pno, String id) {
		int cnt = 0;
		con = db.getCon();
		String sql = bSQL.getSQL(bSQL.ADD_LIKE);
		pstmt = db.getPSTMT(con, sql);
		
		try {
			pstmt.setInt(1, pno);
			pstmt.setString(2, id);
			
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		
		return cnt;
	}
	
	// 좋아요 취소 처리
	public int cancelLike(int pno, String id) {
		int cnt = 0;
		con = db.getCon();
		String sql = bSQL.getSQL(bSQL.CANCEL_LIKE);
		pstmt = db.getPSTMT(con, sql);
		
		try {
			pstmt.setInt(1, pno);
			pstmt.setString(2, sql);
			
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		
		return cnt;
	}
	
	// 좋아요 취소했던 글에 다시 좋아요 처리
	public int reLike(int pno, String id) {
		int cnt = 0;
		con = db.getCon();
		String sql = bSQL.getSQL(bSQL.RE_LIKE);
		pstmt = db.getPSTMT(con, sql);
		
		try {
			pstmt.setInt(1, pno);
			pstmt.setString(2, sql);
			
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		return cnt;
	}

}
