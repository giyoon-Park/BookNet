package com.pageturner.www.DB;

/**
 *  이 클래스는 데이터베이스작업을 위한 JDBC를 처리할 때 필요한 공통적인 기능을 제공하기 위한 클래스
 *  @author		박기윤
 *  @since		2020.04.03
 *  @version	v.1.0
 *  @see		java.sql.*
 *  
 */
import java.sql.*;
public class ORCLJDBC {
	/*
		이 클래스를 new 시키는 순간
		기본적으로 가장 필요한 드라이버로딩 작업을 동시에 실행할 것이다.
	 */
	private String user;
	private String pw;
	private String url;
	
	public ORCLJDBC() {
		this("jdbc:oracle:thin:@localhost:1521:orcl", "grapefruit", "increpas");
	}
	
	public ORCLJDBC(String url, String user, String pw) {
		this.user = user;
		this.pw = pw;
		this.url = url;
		try {
			// 드라이버 로딩하고
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// 커넥션 얻어오는 함수
	public Connection getCon() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(url, user, pw);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
	// Statement 얻어오는 함수
	public Statement getSTMT(Connection con) {
		Statement stmt = null;
		try {
			stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			/*
				* ReusltSet의 Type
					1) TYPE_FORWARD_ONLY : scroll이 불가능한 forwad only 형
					2) TYPE_SCROLL_INSENSITIVE : scroll은 가능하나, 변경된 사항은 적용되지 않음
					3) TYPE_SCROLL_SENSITIVE : scroll은 가능하며, 변경된 사항이 적용됨
	
				* CONCURRENCY의 TYPE
					1) CONCUR_READ_ONLY : resultset object의 변경이 불가능
					2) CONCUR_UPDATABLE : resultset object의 변경이 가능
			*/
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return stmt;
	}
	
	// PreparedStatement 얻어오는 함수
	public PreparedStatement getPSTMT(Connection con, String sql) {
		PreparedStatement pstmt = null;
		try {
			pstmt = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return pstmt;
	}
	
	// 필요가 없을 경우 대신 닫아주는 함수
	public void close(Object o) {
		try{
			if(o instanceof Connection) {
				((Connection) o).close();
			} else if(o instanceof Statement) {
				((Statement) o).close();
			} else if(o instanceof PreparedStatement) {
				((PreparedStatement) o).close();
			} else if(o instanceof ResultSet) {
				((ResultSet) o).close();
			}
		} catch(Exception e) {}
	}

}
