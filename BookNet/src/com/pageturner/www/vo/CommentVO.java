package com.pageturner.www.vo;
/**
 * 이 클래스는 게시글 내에 존재하는 댓글을 관리하는 vo 클래스입니다.
 * @author leeseulkim
 * @since 26th May 2020
 * 
 */

import java.sql.*;
import java.text.*;

public class CommentVO {
	private int cno, pno, mno, rno;
	private String id, comnt, sdate;
	private Date cdate;
	private Time ctime;
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getComnt() {
		return comnt;
	}
	public void setComnt(String comnt) {
		this.comnt = comnt;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate() {
		SimpleDateFormat form1 = new SimpleDateFormat("yy/MM/dd");		
		SimpleDateFormat form2 = new SimpleDateFormat("HH:mm:ss");
		String str = form1.format(cdate) + " " + form2.format(ctime);
		this.sdate = str;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public Date getCdate() {
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}
	public Time getCtime() {
		return ctime;
	}
	public void setCtime(Time ctime) {
		this.ctime = ctime;
	}
}
