package com.pageturner.www.sql;
/**
 * 회원정보, 게시글 관련 SQL
 * @author 이명환
 * @since 2020.05.26
 *
 */
public class BookSQL {
	public final int ADD_USER = 1001; //회원가입 질의명령
	public final int SEL_LOGIN = 1002; //로그인 질의명령
	
	public final int SEL_ALL_POST = 2001; //비로그인 회원 메인화면에 보여줄 게시글 질의명령 
	public final int SEL_ALL_POST_MEM = 2002; //로그인 회원 메인화면에 보여줄 게시글 질의명령
	
	public final int POST_SEARCH_BOOK = 3001; //게시글 작성시 도서검색을 위한 질의명령
	public final int ADD_POSTS = 3002; //게시글 작성을 위한 질의명령
	public final int PUT_TAGS = 3003; //게시글 작성시 작성한 해시태그를 위한 질의명령
	public final int DEL_POSTS = 3004; //게시글 삭제하는 질의명령
	
	public final int ADD_LIKE = 4001; //좋아요 질의명령
	public final int CANCEL_LIKE = 4002; //좋아요 취소 질의명령
	public final int RE_LIKE = 4003; //좋아요 취소했던 글에 다시 좋아요 질의명령
	
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
		case SEL_ALL_POST: //프로필 사진 가져올 수 있게 질의명령 수정해야함 
			buff.append("SELECT ");
			buff.append("    pt.pno, pt.mno, bname, ht.hash hash, id, postcont, postdate, emotion, gname, largeimg ");
			buff.append("FROM ");
			buff.append("    poststab pt, membertab m, ");
			buff.append("    (SELECT ");
			buff.append("        h.pno pno,  ");
			buff.append("        '#'||LISTAGG(hname, '#') WITHIN GROUP (ORDER BY hname DESC) hash ");
			buff.append("    FROM ");
			buff.append("        poststab p,  hashtab h ");
			buff.append("    WHERE ");
			buff.append("       p.pno = h.pno ");
			buff.append("    GROUP BY ");
			buff.append("        h.pno) ht, emotiontab e, genretab g, booktab b ");
			buff.append("WHERE ");
			buff.append("    pt.pno = ht.pno (+) ");
			buff.append("    AND pt.mno = m.mno ");
			buff.append("    AND pt.eno = e.eno ");
			buff.append("    AND b.genre = g.genre ");
			buff.append("    AND pt.bno = b.bno ");
			buff.append("ORDER BY ");
			buff.append("	postdate DESC ");
			break;
		case SEL_ALL_POST_MEM: //로그인한 회원이 보는 메인페이지 :: 
			buff.append("SELECT ");
			buff.append("    DISTINCT pt.pno, pt.mno, bname, ht.hash hash, mp.id, postcont, postdate, emotion, gname, largeimg ");
			buff.append("FROM ");
			buff.append("    poststab pt, membertab m, ");
			buff.append("    (SELECT ");
			buff.append("        h.pno pno,  ");
			buff.append("        '#'||LISTAGG(hname, '#') WITHIN GROUP (ORDER BY hname DESC) hash ");
			buff.append("    FROM ");
			buff.append("        poststab p,  hashtab h ");
			buff.append("    WHERE ");
			buff.append("       p.pno = h.pno ");
			buff.append("    GROUP BY ");
			buff.append("        h.pno) ht, ");
			buff.append("    (SELECT ");
			buff.append("        DISTINCT mno, id ");
			buff.append("    FROM ");
			buff.append("        membertab m, fallowtab ");
			buff.append("    WHERE ");
			buff.append("        m.mno = (SELECT mno FROM membertab WHERE id = ?) ");
			buff.append("        OR (fallower_no = (SELECT mno FROM membertab WHERE id = ?) AND m.mno = fallow_no)) mp, ");
			buff.append("		 emotiontab e, genretab g, booktab b, fallowtab f ");
			buff.append("WHERE ");
			buff.append("    pt.pno = ht.pno (+) ");
			buff.append("    AND pt.eno = e.eno ");
			buff.append("    AND b.genre = g.genre ");
			buff.append("    AND pt.bno = b.bno ");
			buff.append("    AND pt.mno = mp.mno ");
			buff.append("ORDER BY ");
			buff.append("    postdate DESC");
			break;
		case POST_SEARCH_BOOK:
			buff.append("SELECT ");
			buff.append("    bno, bname, gname, writer, trans, largeimg, publish ");
			buff.append("FROM ");
			buff.append("    booktab b, publishtab p, genretab g ");
			buff.append("WHERE ");
			buff.append("    b.publish_no = p.publish_no ");
			buff.append("    AND b.genre = g.genre ");
			buff.append("	AND bname LIKE ? ");
			buff.append("    OR writer LIKE ? ");
			buff.append("    OR publish LIKE ?");
			break;
		case ADD_POSTS:
			buff.append("INSERT INTO ");
			buff.append("    poststab(pno, mno, bno, postcont, eno) ");
			buff.append("VALUES( ");
			buff.append("    (SELECT MAX(pno)+1 FROM poststab), ");
			buff.append("    (SELECT mno FROM membertab WHERE id = ?), ?, ");
			buff.append("    ?, ?)");
			break;
		case PUT_TAGS:
			buff.append("INSERT INTO ");
			buff.append("    hashtab(hno, pno, hname) ");
			buff.append("VALUES( ");
			buff.append("    (SELECT MAX(hno)+1 FROM hashtab), ");
			buff.append("    (SELECT MAX(pno) FROM poststab), ? )");
			break;
		case DEL_POSTS:
			buff.append("UPDATE ");
			buff.append("    poststab ");
			buff.append("SET ");
			buff.append("    isshow = 'N' ");
			buff.append("WHERE ");
			buff.append("    pno = ? ");
			break;
		case ADD_LIKE:
			buff.append("insert into liketab(lk_no, pno, mno) "); 
			buff.append("values( "); 
			buff.append("    (select nvl(max(lk_no)+1, 4001) from liketab),  "); 
			buff.append("    ?,  "); 
			buff.append("    (select mno from membertab where id = ?) "); 
			buff.append(") ");
			break;
		case CANCEL_LIKE:
			buff.append("update "); 
			buff.append("    liketab "); 
			buff.append("set "); 
			buff.append("    ischeck = 'N' "); 
			buff.append("where "); 
			buff.append("    pno = ? "); 
			buff.append("    and mno = (select mno from membertab where id = ?) ");
			break;
		case RE_LIKE:
			buff.append("update "); 
			buff.append("    liketab "); 
			buff.append("set "); 
			buff.append("    ischeck = 'Y', "); 
			buff.append("    lk_time = sysdate "); 
			buff.append("where "); 
			buff.append("    pno = ? "); 
			buff.append("    and mno = (select mno from membertab where id = ?) ");
			break;
		}
		
		return buff.toString();
	}
	
}