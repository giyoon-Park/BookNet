package com.pageturner.www.util;
/**
 *	이 클래스는 인터파크에서 도서정보를 받아와서 json으로 파싱, 리스트로 반환하는 클래스이다.
 *	@author	박기윤
 *	@since	2020.05.27
 */
import java.io.*;
import java.net.*;
import java.util.*;
import org.json.simple.*;
import org.json.simple.parser.*;
import com.pageturner.www.vo.*;
import com.pageturner.www.dao.*;

public class InterParkAPI {
	private final String KEY = "756476FCE177C662B901F60050D436CDFFDF8BCC7C44966D95B67471225CF8EF"; //인터파크 API를 사용하기 위한 KEY값
	public final static int SEARCH = 1001;
	public final int RECOMMEND = 1002;
	public final int NEWBOOK = 1003;
	public final int BESTSELLER = 1004;
	public JSONArray item;
	public JSONObject obj;
	public ArrayList<BookVO> list;
	
	String api;
	String query;
	
	public InterParkAPI() {
		this(SEARCH, "java");
	}
	public<T> InterParkAPI(int code, T keyword) {
		String str = null;
		String json = null;
		String address = null;

		selectAPI(code);
		String base = api + "?key=" + KEY + "&";
		
		try {
			//if(keyword instanceof String)
				//str = URLEncoder.encode((String)keyword, "UTF-8");
			
			if(query.equals("query")) {
				address = base + "query=" + keyword + "&output=json&maxResults=30";
			} else {
				address = base + "categoryId=" + keyword + "&output=json&maxResults=30";
			}
			URLEncoder.encode(address, "UTF-8");
			json = webConnection(address);
			this.list = parsingBookInfo(json);
		} catch (Exception e) {
			e.printStackTrace();
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
		String protocol = "POST";
		
		url = new URL(address);
		conn = (HttpURLConnection)url.openConnection();
		conn.setRequestMethod(protocol);
		br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		
		json = br.readLine();
		return json;
	}
	
	// json object에서 item(검색결과물)의 정보들을 담는다.
	public ArrayList<BookVO> parsingBookInfo(String json) throws Exception{
		ArrayList<BookVO> list = new ArrayList<BookVO>();
		
		JSONParser parser = new JSONParser();
		obj = (JSONObject)parser.parse(json);
		
		this.item = (JSONArray)obj.get("item");
		
		for (int i = 0; i < item.size(); i++) {
			BookVO bVO = new BookVO();
			JSONObject tmp = (JSONObject)item.get(i);
			String ctgr = (String)tmp.get("categoryId");
			bVO.setAuthor((String)tmp.get("author"));
			bVO.setTitle((String)tmp.get("title"));
			bVO.setCategoryId(Integer.parseInt(ctgr));
			bVO.setCvrsUrl((String)tmp.get("coverSmallUrl"));
			bVO.setCvrlUrl((String)tmp.get("coverLargeUrl"));
			bVO.setPublisher((String)tmp.get("publisher"));
			bVO.setTranslator((String)tmp.get("translator"));
			bVO.setIsbn((String)tmp.get("isbn"));
			bVO.setSaleStatus((String)tmp.get("saleStatus"));
			list.add(bVO);
		}
		
		return list;
	}
}