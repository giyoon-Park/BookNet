package com.pageturner.www.sql;
/**
 *	이 클래스는 mypage에서 사용할 SQL을 제공할 클래스이다.
 * @author	박기윤
 * @since	2020.05.24
 *
 */
public class MyPageSQL {
	public final int SEL_MEM_INFO = 1001;
	public final int SEL_MEM_MNO = 1002;
	
	public final int SEL_POST_LIST = 2001;
	public final int CNT_POST = 2002;
	
	public final int SEL_LIKE_LIST = 3001;
	
	public final int SEL_FALLOW_LIST = 4001;
	public final int SEL_FALLOWER_LIST = 4002;
	public final int CNT_FALLOW = 4003;
	public final int CNT_FALLOWER = 4004;
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case SEL_MEM_INFO:
			buff.append("SELECT ");
			buff.append("    gen, birthdate, interest, nickname, describe, ");
			buff.append("    intershow, birthshow, genshow, isinflu, save_name, save_loc ");
			buff.append("FROM ");
			buff.append("    member mt, profilepictab pt ");
			buff.append("WHERE ");
			buff.append("    mt.mno = pt.mno ");
			buff.append("    AND mt.mno = ? ");
			break;
		case SEL_MEM_MNO:
			buff.append("SELECT ");
			buff.append("    mno ");
			buff.append("FROM ");
			buff.append("    membertab ");
			buff.append("WHERE ");
			buff.append("    id = ? ");
			break;
		case SEL_POST_LIST:
			buff.append("SELECT ");
			buff.append("    pt.pno, postcont, postdate, bname, writer, linkno, ");
			buff.append("    publish, smallimg, id, ischeck ");
			buff.append("FROM ");
			buff.append("    liketab lt, poststab pt, booktab bt, publishtab pbt, membertab mt ");
			buff.append("WHERE ");
			buff.append("    pt.mno = ? ");
			buff.append("    AND pt.mno = mt.mno ");
			buff.append("    AND lt.pno = pt.pno ");
			buff.append("    AND pt.bno = bt.bno ");
			buff.append("    AND bt.publish_no = pbt.publish_no ");
			buff.append("    AND pt.isshow = 'Y' ");
			buff.append("    AND mt.isshow = 'Y' ");
			buff.append("	 AND pno BETWEEN (SELECT MAX(pno) - 5 FROM poststab) ");
			buff.append("		AND (SELECT MAX(pno) FROM poststab) ");
			buff.append("ORDER BY ");
			buff.append("	 postdate DESC ");
			break;
		case CNT_POST:
			buff.append("SELECT ");
			buff.append("    COUNT(*) cnt ");
			buff.append("FROM ");
			buff.append("    poststab ");
			buff.append("WHERE ");
			buff.append("    mno = ? ");
			buff.append("    AND isshow = 'Y' ");
			break;
		case SEL_LIKE_LIST:
			buff.append("SELECT ");
			buff.append("    lt.pno, postcont, postdate, bname, writer, linkno, ");
			buff.append("    publish, smallimg, id, ischeck ");
			buff.append("FROM ");
			buff.append("    liketab lt, poststab pt, booktab bt, publishtab pbt, membertab mt ");
			buff.append("WHERE ");
			buff.append("    lt.mno = ? ");
			buff.append("    AND lt.mno = mt.mno ");
			buff.append("    AND lt.pno = pt.pno ");
			buff.append("    AND pt.bno = bt.bno ");
			buff.append("    AND bt.publish_no = pbt.publish_no ");
			buff.append("    AND lt.ischeck = 'Y' ");
			buff.append("    AND pt.isshow = 'Y' ");
			buff.append("    AND mt.isshow = 'Y' ");
			buff.append("	 AND pno BETWEEN (SELECT MAX(pno) - 5 FROM poststab) ");
			buff.append("		AND (SELECT MAX(pno) FROM poststab) ");
			buff.append("ORDER BY ");
			buff.append("	 postdate DESC ");
			break;
		case SEL_FALLOW_LIST:
			buff.append("SELECT ");
			buff.append("    fallower_no mno, nickname, save_name sname, save_loc loc ");
			buff.append("FROM ");
			buff.append("    membertab mt, profilepictab ppt, fallowtab ft ");
			buff.append("WHERE ");
			buff.append("    ft.fallower_no = ? ");
			buff.append("    AND ft.fallow_no = mt.mno ");
			buff.append("    AND mt.mno = ppt.mno ");
			buff.append("    AND ft.ischeck = 'Y' ");
			buff.append("    AND mt.isshow = 'Y' ");
			break;
		case SEL_FALLOWER_LIST:
			buff.append("SELECT ");
			buff.append("    fallow_no mno, nickname, save_name sname, save_loc loc ");
			buff.append("FROM ");
			buff.append("    membertab mt, profilepictab ppt, fallowtab ft ");
			buff.append("WHERE ");
			buff.append("    ft.fallow_no = ? ");
			buff.append("    AND ft.fallower_no = mt.mno ");
			buff.append("    AND mt.mno = ppt.mno ");
			buff.append("    AND ft.ischeck = 'Y' ");
			buff.append("    AND mt.isshow = 'Y' ");
			break;
		case CNT_FALLOW:
			buff.append("SELECT ");
			buff.append("    COUNT(*) cnt ");
			buff.append("FROM ");
			buff.append("    fallowtab ft ");
			buff.append("WHERE ");
			buff.append("    ft.fallower_no = ? ");
			break;
		case CNT_FALLOWER:
			buff.append("SELECT ");
			buff.append("    COUNT(*) cnt ");
			buff.append("FROM ");
			buff.append("    fallowtab ft ");
			buff.append("WHERE ");
			buff.append("    ft.fallow_no = ? ");
			break;
		}
		return buff.toString();
	}
}