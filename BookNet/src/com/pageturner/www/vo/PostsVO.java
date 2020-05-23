package com.pageturner.www.vo;
/**
 * 이 클래스는 게시물(post)과 관련된 변수들의 vo 클래스입니다.
 * @author leeseulkim
 * @since 23rd May 2020
 * 
 *
 */

import java.sql.*;
import java.text.*;

public class PostsVO {
	private int pno, mno, eno, bno, genre;
	private String id, bname, postcont, pdate, emotion, sloc, gname;
	private Date postDate;
	private Time postTime;
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
	public int getEno() {
		return eno;
	}
	public void setEno(int eno) {
		this.eno = eno;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getGenre() {
		return genre;
	}
	public void setGenre(int genre) {
		this.genre = genre;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getPostcont() {
		return postcont;
	}
	public void setPostcont(String postcont) {
		this.postcont = postcont;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate() {
		SimpleDateFormat form1 = new SimpleDateFormat("yyyy/MM/dd");
		SimpleDateFormat form2 = new SimpleDateFormat("HH:mm:ss");
		String str = form1.format(postDate) + form2.format(postTime);
		this.pdate = str;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	public String getEmotion() {
		return emotion;
	}
	public void setEmotion(String emotion) {
		this.emotion = emotion;
	}
	public String getSloc() {
		return sloc;
	}
	public void setSloc(String sloc) {
		this.sloc = sloc;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public Date getPostDate() {
		return postDate;
	}
	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}
	public Time getPostTime() {
		return postTime;
	}
	public void setPostTime(Time postTime) {
		this.postTime = postTime;
	}
	
	
}
