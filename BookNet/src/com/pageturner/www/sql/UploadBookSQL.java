package com.pageturner.www.sql;
/**
 * 	이 클래스는 API를 통해 얻어온 책 정보를 db에 유무를 확인하고
 * 	db에 해당 책의 정보가 없을 시 db에 추가하는 질의명령을 반환하는 클래스이다.
 * @author	박기윤
 * @since	2020.05.27
 *
 */
public class UploadBookSQL {
	public final int SEL_PUB = 1001;
	public final int SEL_BOOK = 1002;
	public final int INS_PUB = 1003;
	public final int INS_BOOK = 1004;
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case SEL_PUB:
			buff.append("SELECT ");
			buff.append("    COUNT(*) cnt ");
			buff.append("FROM ");
			buff.append("    publishtab ");
			buff.append("WHERE ");
			buff.append("    publish = ? ");
			break;
		case SEL_BOOK:
			buff.append("SELECT ");
			buff.append("    count(*) cnt ");
			buff.append("FROM ");
			buff.append("    booktab ");
			buff.append("WHERE ");
			buff.append("    isbn = ? ");
			break;
		case INS_PUB:
			buff.append("INSERT INTO ");
			buff.append("    publishtab(publish_no, publish) ");
			buff.append("VALUES( ");
			buff.append("    (SELECT NVL(MAX(publish_no) + 1, 1) FROM publishtab), ? ");
			buff.append(") ");
			break;
		case INS_BOOK:
			buff.append("INSERT INTO ");
			buff.append("    booktab(bno, bname, genre, writer, trans, smallimg, largeimg, isbn, publish_no) ");
			buff.append("VALUES( ");
			buff.append("    (SELECT NVL(MAX(bno) + 1, 1) FROM booktab), ?, ?, ?, ?, ?, ?, ?, ");
			buff.append("	 (SELECT publish_no FROM publishtab WHERE publish = ?) ");
			buff.append(") ");
			break;
		}
		return buff.toString();
	}
}
