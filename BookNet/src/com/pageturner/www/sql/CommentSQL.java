package com.pageturner.www.sql;

public class CommentSQL {
	public final int SHOW_RPL = 1001; //게시글에 달린 댓글 리스트를 보여주는 질의명령
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		
		switch(code) {
		case SHOW_RPL:
			buff.append("SELECT ");
			buff.append("    cno, c.pno, comnt, c.mno, cdate ");
			buff.append("FROM ");
			buff.append("    commenttab c, poststab p, membertab m ");
			buff.append("WHERE ");
			buff.append("    c.pno = p.pno ");
			buff.append("    AND p.pno = ? ");
			buff.append("    AND c.mno = m.mno ");
			buff.append("    AND c.isshow = 'Y'");
			break;
		}
		
		return buff.toString();
	}

}
