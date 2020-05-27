package com.pageturner.www.sql;

public class CommentSQL {
	public final int SHOW_RPL = 1001; //게시글에 달린 댓글 리스트를 보여주는 질의명령
	public final int ADD_RPL = 1002; //게시글에 댓글 달아주는 질의명령 
	
	public final int DEL_POST = 2001; //게시글 삭제해주는 질의명령 
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		
		switch(code) {
		case SHOW_RPL:
			buff.append("SELECT ");
			buff.append("    ROWNUM rno, cno, c.pno, comnt, c.mno, cdate, id ");
			buff.append("FROM ");
			buff.append("    commenttab c, poststab p, membertab m ");
			buff.append("WHERE ");
			buff.append("    c.pno = p.pno ");
			buff.append("    AND p.pno = ? ");
			buff.append("    AND c.mno = m.mno ");
			buff.append("    AND c.isshow = 'Y' ");
			buff.append("    AND ROWNUM BETWEEN 1 AND 3 ");
			buff.append("ORDER BY ");
			buff.append("    cdate");
			break;
		case ADD_RPL:
			buff.append("INSERT INTO ");
			buff.append("    commenttab(cno, pno, comnt, mno) ");
			buff.append("VALUES( ");
			buff.append("    (SELECT ");
			buff.append("        MAX(cno)+1 ");
			buff.append("    FROM ");
			buff.append("        commenttab), ?, ?, ");
			buff.append("		(SELECT mno FROM membertab WHERE id = ?))");
			break;
		case DEL_POST:
			buff.append("UPDATE  ");
			buff.append("    poststab ");
			buff.append("SET ");
			buff.append("    isshow = 'N' ");
			buff.append("WHERE ");
			buff.append("    pno = ?");
			break;
		}
		
		return buff.toString();
	}

}
