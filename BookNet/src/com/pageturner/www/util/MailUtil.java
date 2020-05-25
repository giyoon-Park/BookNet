package com.pageturner.www.util;

import java.util.Properties;

/**
 * 메일인증번호 발송
 * @author 이명환
 * @since 2020.05.25
 *
 */
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailUtil {
	Session session;
	String user;
	String pass;
	
	public MailUtil(String id, String pw) {
		String host = "smtp.naver.com";
		user = id;	// 네이버 id
		pass = pw;	// 네이버 pw
		
		Properties prop = new Properties();
		prop.put("mail.smtp.host", host);
		prop.put("mail.smtp.port", 465);
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.starttls.enable", "true");
		
		session = session.getDefaultInstance(prop, 
					new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, pass);
			}
		});
		
	}
	
	public int getSend(String from, String cout) {
		int cnt = 0;
		String getFrom = from;
		
		// 메일 전송
		try {
			MimeMessage msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(user));
			System.out.println("********");
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(getFrom));
			System.out.println("ㅁㄴㅇㄹ");
			
			msg.setSubject("회원가입 인증 메일 발송");	// 메일 제목
			System.out.println("본문");
			msg.setText("인증번호: " + cout + "입니다");	// 메일 본문
			
			Transport.send(msg);
			cnt = 1;
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		System.out.println(cnt);
		return cnt;
	}

}
