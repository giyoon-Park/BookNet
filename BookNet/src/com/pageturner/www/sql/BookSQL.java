package com.pageturner.www.sql;
/**
 * 우리 SQL
 * @author 2조
 *
 */
public class BookSQL {
	public final int ADD_USER = 1001;
	public final int SEL_LOGIN = 1002;
	
	public final int SEL_ALL_POST = 2001; //비로그인 회원 메인화면에 보여줄 게시글 질의명령 
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		
		switch(code) {
		case ADD_USER:
			buff.append("insert into membertab(mno, id, pw, name, nickname, birthdate, gen, mail, tel, interest, describe) "); 
			buff.append("values( "); 
			buff.append("    (select nvl(max(mno)+1, 1000) from membertab), "); 
			buff.append("    ?, ?, ?, ?, TO_DATE(?,'yyMMdd') , ?, ?, ?, ?, ? "); 
			buff.append(")");
			break;
		case SEL_LOGIN:
			buff.append("SELECT ");
			buff.append("    count(*) cnt ");
			buff.append("FROM ");
			buff.append("    membertab ");
			buff.append("WHERE ");
			buff.append("    id = ? ");
			buff.append("    AND pw = ?");
			break;
		case SEL_ALL_POST:
			buff.append("SELECT ");
			buff.append("    pno, id, bname, postcont, postdate, emotion, ");
			buff.append("    save_loc sloc, gname ");
			buff.append("FROM ");
			buff.append("    poststab p, membertab m, booktab b, emotiontab e, bookpictab bp, genretab g ");
			buff.append("WHERE ");
			buff.append("    p.isshow = 'Y' ");
			buff.append("    AND p.mno = m.mno ");
			buff.append("    AND p.bno = b.bno ");
			buff.append("    AND p.eno = e.eno ");
			buff.append("    AND b.bno = bp.bno ");
			buff.append("    AND b.genre = g.genre");
			buff.append("ORDER BY ");
			buff.append("	postdate DESC ");
			break;
		}
		
		return buff.toString();
	}
	
}