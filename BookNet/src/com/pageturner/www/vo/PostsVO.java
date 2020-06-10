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
	private int pno, mno, eno, bno, linkno, cnt;
	private String id, profile, bname, writer, trans, postcont, pdate,
					largeimg, gname, hash, publish, ischeck, emotion;
	private Date postDate;
	private Time postTime;
	
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getIscheck() { //게시글내 좋아요 갯수처리시 필요 
		return ischeck;
	}
	public void setIscheck(String ischeck) {
		this.ischeck = ischeck;
	}
	public int getLinkno() {
		return linkno;
	}
	public void setLinkno(int linkno) {
		this.linkno = linkno;
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
	public int getEno() {
		return eno;
	}
	public void setEno(int eno) {
		this.eno = eno;
	}
	public String getEmotion() {
		return emotion;
	}
	public void setEmotion(String emotion) {
		this.emotion = emotion;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTrans() {
		return trans;
	}
	public void setTrans(String trans) {
		this.trans = trans;
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
		SimpleDateFormat form1 = new SimpleDateFormat("yy/MM/dd");
		SimpleDateFormat form2 = new SimpleDateFormat("HH:mm:ss");
		String str = form1.format(postDate) + " " + form2.format(postTime);
		this.pdate = str;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	public String getLargeimg() {
		return largeimg;
	}
	public void setLargeimg(String largeimg) {
		this.largeimg = largeimg;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getHash() {
		return hash;
	}
	public void setHash(String hash) {
		this.hash = hash;
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
	public String getPublish() {
		return publish;
	}
	public void setPublish(String publish) {
		this.publish = publish;
	}
}