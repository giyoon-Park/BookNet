package com.pageturner.www.vo;

public class BookVO {
	private String title, saleStatus, cvrsUrl, cvrlUrl, publisher, author, translator, link;
	private int categoryId, isbn;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSaleStatus() {
		return saleStatus;
	}
	public void setSaleStatus(String saleStatus) {
		this.saleStatus = saleStatus;
	}
	public String getCvrsUrl() {
		return cvrsUrl;
	}
	public void setCvrsUrl(String cvrsUrl) {
		this.cvrsUrl = cvrsUrl;
	}
	public String getCvrlUrl() {
		return cvrlUrl;
	}
	public void setCvrlUrl(String cvrlUrl) {
		this.cvrlUrl = cvrlUrl;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getTranslator() {
		return translator;
	}
	public void setTranslator(String translator) {
		this.translator = translator;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getIsbn() {
		return isbn;
	}
	public void setIsbn(int isbn) {
		this.isbn = isbn;
	}
}
