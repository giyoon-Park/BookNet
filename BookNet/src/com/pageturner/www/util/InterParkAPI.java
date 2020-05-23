package com.pageturner.www.util;

import java.io.*;
import java.net.*;
import org.json.simple.*;
import org.json.simple.parser.*;

public class InterParkAPI {
	private final String KEY = "756476FCE177C662B901F60050D436CDFFDF8BCC7C44966D95B67471225CF8EF"; //인터파크 API를 사용하기 위한 KEY값
	final int SEARCH = 1001;
	final int RECOMMEND = 1002;
	final int NEWBOOK = 1003;
	final int BESTSELLER = 1004;
	
	String api;
	String query;
	
	public InterParkAPI() {}
	public InterParkAPI(int code, String keyword) {
		keyword = keyword.replaceAll(" ", "%20");	// 뛰어쓰기를 브라우저가 인식할 수 있는 단어로 바꾼다.
		String address = null;

		selectAPI(code);
		String base = api + "?key=" + KEY + "&";
		
		if(query == "query") {
			address = base + "query=" + keyword + "&output=json";
		} else {
			address = base + "categoryId=100" + "&output=json";
		}
	}
	
	// api 종류와 keyword 종류를 선택한다
	public void selectAPI(int code) {
		switch(code) {
		case SEARCH:
			this.api = "http://book.interpark.com/api/search.api";
			this.query = "query";
			break;
		case RECOMMEND:
			this.api = "http://book.interpark.com/api/recommend.api";
			this.query = "categoryId";
			break;
		case NEWBOOK:
			this.api = "http://book.interpark.com/api/newBook.api";
			this.query = "categoryId";
			break;
		case BESTSELLER:
			this.api = "http://book.interpark.com/api/bestSeller.api";
			this.query = "categoryId";
			break;
		}
	}
	
	// api를 제공해주는 웹에 연결하여 원하는 결과값을 json 타입으로 받는다.
	public String webConnection(String address) throws Exception {
		String json = null;
		BufferedReader br;
		URL url;
		HttpURLConnection conn;
		String protocol = "GET";
		
		url = new URL(address);
		conn = (HttpURLConnection)url.openConnection();
		conn.setRequestMethod(protocol);
		br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		
		json = br.readLine();
		return json;
	}

	public static void main(String[] args) {

	}

}
