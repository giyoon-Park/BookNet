package com.pageturner.www.sql;
/**
 *	이 클래스는 알람 내용을 꺼내오는데 필요한 질의명령을 기술한 클래스이다.
 * @author	박기윤
 * @since	2020.05.26
 *
 */
public class AlarmSQL {
	public final int SEL_LIKE = 1001;
	public final int SEL_FAL = 1002;
	public final int SEL_COMNT = 1003;
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case SEL_LIKE:
			buff.append("SELECT ");
			buff.append("    pt.pno pno, bname, mt.id, lk_time, save_loc ");
			buff.append("FROM ");
			buff.append("    booktab bt, poststab pt, ");
			buff.append("	 liketab lt, membertab mt, profilepictab ppt ");
			buff.append("WHERE ");
			buff.append("    pt.pno = (SELECT pno FROM poststab, membertab ");
			buff.append("			   WHERE poststab.mno = membertab.mno ");
			buff.append("			   AND id = ?) ");
			buff.append("    AND lt.pno = pt.pno ");
			buff.append("    AND bt.bno = pt.bno ");
			buff.append("    AND lt.mno = mt.mno ");
			buff.append("    AND ppt.mno = mt.mno ");
			buff.append("    AND lt.ischeck = 'Y' ");
			buff.append("    AND pt.isshow = 'Y' ");
			buff.append("    AND mt.isshow = 'Y' ");
			buff.append("	 AND NOT mt.id = ? ");
			break;
		case SEL_FAL:
			buff.append("SELECT ");
			buff.append("    id, fal_time, save_loc ");
			buff.append("FROM ");
			buff.append("    fallowtab ft, membertab mt, profilepictab ppt ");
			buff.append("WHERE ");
			buff.append("    fallow_no = (SELECT mno FROM membertab WHERE id = ? ) ");
			buff.append("    AND fallower_no = mt.mno ");
			buff.append("    AND mt.mno = ppt.mno ");
			buff.append("    AND ischeck = 'Y' ");
			buff.append("    AND mt.isshow = 'Y' ");
			buff.append("    AND ppt.isshow = 'Y' ");
			break;
		case SEL_COMNT:
			buff.append("SELECT ");
			buff.append("    pt.pno pno, bname, mt.id, cdate, save_loc ");
			buff.append("FROM ");
			buff.append("    poststab pt, booktab bt, ");
			buff.append("	 commenttab ct, membertab mt, profilepictab ppt ");
			buff.append("WHERE ");
			buff.append("    pt.mno = (SELECT mno FROM membertab WHERE id = ?) ");
			buff.append("    AND pt.bno = bt.bno ");
			buff.append("    AND pt.pno = ct.pno ");
			buff.append("    AND ct.mno = mt.mno ");
			buff.append("    AND ppt.mno = mt.mno ");
			buff.append("    AND ct.isshow = 'Y' ");
			buff.append("    AND pt.isshow = 'Y' ");
			buff.append("    AND mt.isshow = 'Y' ");
			buff.append("	 AND NOT mt.id = ? ");
			break;
		}
		return buff.toString();
	}
}