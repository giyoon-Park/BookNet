package com.pageturner.www.sql;
/**
 * 이 클래스는 search에서 사용할 SQL을 제공하는 클래스이다.
 * @author	서동혁
 * @version v.0.1.0
 * @since	2020.05.24
 */
public class SearchSQL {
	public final int SEL_ALL_SRC = 1001; //모든 검색 결과를 보여줄 질의명령 


	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case SEL_ALL_SRC:
		 	buff.append("SELECT ");
			buff.append("     bname ,  MAX(hash) hash, writer , trans , gname , name , id , nickname , publish , postcont, prof.save_loc profile, largeimg limg  ");
			buff.append("FROM ");
			buff.append("    booktab b, genretab g ");
			buff.append("    , membertab m, publishtab pub, poststab p,    (SELECT ");
			buff.append("        h.pno pno,  ");
			buff.append("        '#'||LISTAGG(hname, '#') WITHIN GROUP (ORDER BY hname DESC) hash ");
			buff.append("    FROM ");
			buff.append("        poststab p,  hashtab h ");
			buff.append("    WHERE ");
			buff.append("       p.pno = h.pno ");
			buff.append("    GROUP BY ");
			buff.append("        h.pno)h,  profilepictab prof ");
			buff.append("WHERE ");
			buff.append("    b.genre = g.genre ");
			buff.append("    AND b.bno = p.bno ");
			buff.append("    AND pub.publish_no = b.publish_no ");
			buff.append("    AND m.mno = p.mno ");
			buff.append("    AND p.pno = h.pno  ");
			buff.append("    AND prof.mno = m.mno  ");
			buff.append("    AND (bname LIKE ? ");
			buff.append("    OR WRITER LIKE ? ");
			buff.append("    OR TRANS LIKE ? ");
			buff.append("    OR gname LIKE ? ");
			buff.append("    OR hash LIKE ? ");
			buff.append("    OR name LIKE ? ");
			buff.append("    OR id LIKE ? ");
			buff.append("    OR nickname LIKE ? ");
			buff.append("    OR publish LIKE ?) ");
			buff.append("Group By bname , writer , trans , gname , name , id , nickname , publish , postcont, prof.save_loc, largeimg ");
			break;
		}
		return buff.toString();
	}
}