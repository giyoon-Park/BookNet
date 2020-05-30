package com.pageturner.www.vo;
/**
 * 이 클래스는 검색결과를 담을 VO이다. 
 * @author 서동혁
 * @version v.0.1.0
 * @since 2020.05.27
 *
 */
public class SearchVO {
	private int pno;
	private String bname, hash, writer, trans, gname, name, id, nickname, publish, postcont, profile, limg;

	
	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getHash() {
		return hash;
	}

	public void setHash(String hash) {
		this.hash = hash;
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

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPublish() {
		return publish;
	}

	public void setPublish(String publish) {
		this.publish = publish;
	}

	public String getPostcont() {
		return postcont;
	}
	public void setPostcont() {
		this.postcont = postcont.replaceAll("\r\n", "<br>");
	}
	public void setPostcont(String postcont) {
		this.postcont = postcont;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getLimg() {
		return limg;
	}

	public void setLimg(String limg) {
		this.limg = limg;
	}
	

}