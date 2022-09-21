package com.kcy.login.service;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kcy.login.mapper.UserMapper;

import lombok.AllArgsConstructor;
//220828 황하경
@Service
@AllArgsConstructor
public class SendEmailService {
	@Autowired
	UserMapper userMapper;
	@Autowired
	BCryptPasswordEncoder password;
	@Autowired
	JavaMailSender ms;
	
	private static final String FROM_ADDRESS = "xorganism09@gmail.com";
	
	// 임시 비밀번호 설정과 mail 내용
	public MailDto createMailAndChangePassword(String userEmail, String myName) {
		String str = getTempPassword();
		System.out.println("str!!" + str);
		MailDto dto = new MailDto();
		dto.setAddress(userEmail);
		dto.setTitle(myName + " 님의 KCY UNIV 임시비밀번호 안내 이메일입니다.");
		dto.setMessage("[" + myName + "]" + "님의 임시 비밀번호는 [ " + str + " ]입니다.");
		updatePassword(str, userEmail);
		return dto;
	}

	// 임시 비밀번호를 mapper에 보냄
	private void updatePassword(String str, String userEmail) {
		String pw = password.encode(str);
		String email = userMapper.findUserByUserId(userEmail).getUserEmail();
		UserVo vo = new UserVo();
		vo.setPw(pw);
		vo.setUserEmail(email);
		userMapper.updateUserPassword(vo);
	}

	// 무작위 임시 비밀번호를 String으로 생성
	private String getTempPassword() {
		char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
                'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

        String str = "";
        System.out.println(str);

        int idx = 0;
        for (int i = 0; i < 10; i++) {
            idx = (int) (charSet.length * Math.random());
            str += charSet[idx];
        }
        return str;
	}
	
	// mail 전송을 위한 html 작성
	public void mailSend(MailDto mailDto) {
        System.out.println("이멜 전송 완료!");
        MimeMessage message = ms.createMimeMessage();  
        
        String htmlStr = 
        		"<div style='text-align: center'>"
        		+ "<img class=\"img-fluid\" src='/aa/logo/KCYlogo.png' alt='KCYlogo'>"
        		+ "<br>"
        		+ "<div style='text-align: center; font-size: 18px; font-weight: 700; padding: 10px; background: #EEF1FF;'>"
        		+ "<span>KCY UNIV에서 임시 비밀번호를 알려 드립니다.</span>"
        		+ "</div>"
        		+ "<div style='width: 100%;'>"
        		+ "<p style='font-size: 15px; margin-top: 150px; margin-bottom: 150px'>"
        		+ mailDto.getMessage()
        		+ "</p>"
        		+ "<br><a href=" 
        		+ "http://kcy.lol/changePw?userEmail=" 
        		+ mailDto.getAddress() 
        		+ " style='text-decoration: none;'>비밀번호 변경</a>"
        		+ "</div>"
        		+ "</div>";
        
//        message.setTo(mailDto.getAddress());
//        message.setFrom(SendEmailService.FROM_ADDRESS);
//        message.setSubject(mailDto.getTitle());
//        message.setText(htmlStr);
        try {
        	
			message.addRecipient(RecipientType.TO, new InternetAddress(mailDto.getAddress()));
			message.setFrom(SendEmailService.FROM_ADDRESS);
	        message.setSubject(mailDto.getTitle());
	        message.setText(htmlStr, "UTF-8", "html");
	        
		} catch (AddressException e) {
			e.printStackTrace();
			return;
		} catch (MessagingException e) {
			e.printStackTrace();
			return;
		}
        
        System.out.println(message);
        ms.send(message);
	}
	
    
}
