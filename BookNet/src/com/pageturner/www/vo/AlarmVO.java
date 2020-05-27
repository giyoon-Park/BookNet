package com.pageturner.www.vo;
/**
 *	이 클래스는 알람 내용을 저장할 VO 클래스이다.
 *	@author	박기윤
 *	@since	2020.05.27
 */
import java.sql.*;
import java.text.*;

public class AlarmVO {
	private String type, extime, bname, id;
	private int pno;
	private Date date;
	private Time time;
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getExtime() {
		return extime;
	}
	public void setExtime(String extime) {
		this.extime = extime;
	}
	public void setExtime() {
		SimpleDateFormat formD = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat formT = new SimpleDateFormat("HH:mm:ss");
		this.extime = formD.format(date) + " " + formT.format(time);
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Time getTime() {
		return time;
	}
	public void setTime(Time time) {
		this.time = time;
	}
}
