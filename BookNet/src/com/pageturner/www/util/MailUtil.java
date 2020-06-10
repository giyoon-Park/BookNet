package com.pageturner.www.util;

/**
 * 메일인증번호 발송
 * @author 이명환
 * @since 2020.05.26
 *
 *	gmail로 발송합니다.
 *	gmail 설정의 '전달 및 POP/IMAP' 메뉴에서 'POP다운로드'의 상태가
 *	'모든 메일에 대해 POP가 사용 설정되어 있습니다.'로 되어있는지 확인해주시고,
 *	Google계정관리에서 '보안' 메뉴의 '보안 수준이 낮은 앱의 엑세스'를 '사용'으로
 *	설정한 후 클래스를 사용해주세요.
 */

import java.util.*;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailUtil {
	Session session;
	String user;
	String pass;
	
	public MailUtil(String id, String pw) {
		String host = "smtp.gmail.com";
		user = id;	// 구글 id
		pass = pw;	// 구글 pw
		
		Properties prop = new Properties();
		prop.put("mail.smtp.host", host);
		prop.put("mail.smtp.port", 465);
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.starttls.enable", "true");
		prop.put("mail.smtp.ssl.trust", host);
		
		session = Session.getDefaultInstance(prop, 
					new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, pass);
			}
		});
	}
	
	public int getSend(String from, String cout) {
		int cnt = 0;
		String getFrom = from;
		
		try {
			MimeMessage msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(user));	// 보내는 사람
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(getFrom));
			
			msg.setSubject("회원가입 인증 메일 발송");	// 메일 제목
			msg.setText("인증번호는 [***" + cout + "***] 입니다");	// 메일 본문
			
			Transport.send(msg);
			cnt = 1;
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
	
//	public void sendMail() {
//		String host = "smtp.gmail.com";
//		user = "myeongwhan@gmail.com";	// 구글 id
//		pass = "wnals106!";	// 구글 pw
//		
//		Properties prop = new Properties();
//		prop.put("mail.smtp.host", host);
//		prop.put("mail.smtp.port", 465);
//		prop.put("mail.smtp.auth", "true");
//		prop.put("mail.smtp.ssl.enable", "true");
//		prop.put("mail.smtp.starttls.enable", "true");
//		prop.put("mail.smtp.ssl.trust", host);
//		
//		session = Session.getDefaultInstance(prop, 
//					new Authenticator() {
//			protected PasswordAuthentication getPasswordAuthentication() {
//				return new PasswordAuthentication(user, pass);
//			}
//		});
//		
//		//인증 번호 생성기
//        StringBuffer temp = new StringBuffer();
//        Random rnd = new Random();
//        for(int i=0;i<10;i++)
//        {
//            int rIndex = rnd.nextInt(3);
//            switch (rIndex) {
//            case 0:
//                // a-z
//                temp.append((char) ((int) (rnd.nextInt(26)) + 97));
//                break;
//            case 1:
//                // A-Z
//                temp.append((char) ((int) (rnd.nextInt(26)) + 65));
//                break;
//            case 2:
//                // 0-9
//                temp.append((rnd.nextInt(10)));
//                break;
//            }
//        }
//        String AuthenticationKey = temp.toString();
////        System.out.println(AuthenticationKey);
//        
//        // 메일보내기
//		try {
//			MimeMessage msg = new MimeMessage(session);
//			msg.setFrom(new InternetAddress(user));	// 보내는 사람
//			msg.addRecipient(Message.RecipientType.TO, new InternetAddress("502flclqlf@gmail.com"));
//			
//			msg.setSubject("회원가입 인증 메일 발송");	// 메일 제목
////			System.out.println("본문");
//			msg.setText("인증번호: " + AuthenticationKey + "입니다");	// 메일 본문
//			
//			Transport.send(msg);
//		} catch(Exception e) {
//			e.printStackTrace();
//		}
//	}

}
