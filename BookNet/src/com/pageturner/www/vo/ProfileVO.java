package com.pageturner.www.vo;

import com.oreilly.servlet.MultipartRequest;

public class ProfileVO {
	private int pf_pt_no, mno;
	private String id, ori_name, save_name, save_loc, isshow;
	private MultipartRequest multi;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPf_pt_no() {
		return pf_pt_no;
	}
	public void setPf_pt_no(int pf_pt_no) {
		this.pf_pt_no = pf_pt_no;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getOri_name() {
		return ori_name;
	}
	public void setOri_name(String ori_name) {
		this.ori_name = ori_name;
	}
	public String getSave_name() {
		return save_name;
	}
	public void setSave_name(String save_name) {
		this.save_name = save_name;
	}
	public String getSave_loc() {
		return save_loc;
	}
	public void setSave_loc(String save_loc) {
		this.save_loc = save_loc;
	}
	public String getIsshow() {
		return isshow;
	}
	public void setIsshow(String isshow) {
		this.isshow = isshow;
	}
	public MultipartRequest getMulti() {
		return multi;
	}
	public void setMulti(MultipartRequest multi) {
		this.multi = multi;
	}
	
}
