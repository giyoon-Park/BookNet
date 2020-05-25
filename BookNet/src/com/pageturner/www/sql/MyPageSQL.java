package com.pageturner.www.sql;
/**
 *	이 클래스는 mypage에서 사용할 SQL을 제공할 클래스이다.
 * @author	박기윤
 * @since	2020.05.24
 *
 */
public class MyPageSQL {
	final int SEL_MEM_INFO = 1001;
	
	final int SEL_POST_LIST = 2001;
	final int CNT_POST = 2002;
	
	final int SEL_LIKE_LIST = 3001;
	
	final int SEL_FALLOW_LIST = 4001;
	final int SEL_FALLOWER_LIST = 4002;
	final int CNT_FALLOW = 4003;
	final int CNT_FALLOWER = 4004;
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case SEL_MEM_INFO:
			buff.append("SELECT ");
			buff.append("    name, mail, tel, gen, birthdate, interest, nickname, describe, ");
			buff.append("    intershow, birthshow, genshow, isinflu, save_name, save_loc ");
			buff.append("FROM ");
			buff.append("    member mt, profilepictab pt ");
			buff.append("WHERE ");
			buff.append("    mt.mno = pt.mno ");
			buff.append("    AND id = ? ");
			break;
		case SEL_POST_LIST:
			buff.append("SELECT ");
			buff.append("    pno, postcont, postdate, eno, bname, writer, ");
			buff.append("    publish, save_name sname, save_loc sloc ");
			buff.append("FROM ");
			buff.append("    poststab pt, booktab bt, bookpictab bpt, publishtab pbt ");
			buff.append("WHERE ");
			buff.append("    pt.bno = bt.bno ");
			buff.append("    AND bt.bno = bpt.bno ");
			buff.append("    AND bt.publish_no = pbt.publish_no ");
			buff.append("    AND pt.isshow = 'Y' ");
			buff.append("	 AND pno BETWEEN (SELECT MAX(pno) - 5 FROM poststab) ");
			buff.append("		AND (SELECT MAX(pno) FROM poststab) ");
			break;
		case CNT_POST:
			buff.append("SELECT ");
			buff.append("    COUNT(*) cnt ");
			buff.append("FROM ");
			buff.append("    poststab ");
			buff.append("WHERE ");
			buff.append("    mno = (SELECT mno FROM membertab WHERE id = ?) ");
			buff.append("    AND isshow = 'Y' ");
			break;
		case SEL_LIKE_LIST:
			buff.append("SELECT ");
			buff.append("    nickname, lk_time time ");
			buff.append("FROM ");
			buff.append("    liketab lt, membertab mt ");
			buff.append("WHERE ");
			buff.append("    pno = (SELECT pno FROM membertab WHERE id = ?) ");
			buff.append("    AND lt.mno = mt.mno ");
			break;
		}
		return buff.toString();
	}
}