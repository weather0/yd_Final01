package com.kcy.login.mapper;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kcy.login.service.UserVo;

import lombok.AllArgsConstructor;

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
	
	public MailDto createMailAndChangePassword(String userEmail, String myName) {
		String str = getTempPassword();
		System.out.println("str!!" + str);
		MailDto dto = new MailDto();
		dto.setAddress(userEmail);
		dto.setTitle(myName + "님의 예담직업전문학교 임시비밀번호 안내 이메일입니다.");
		dto.setMessage("하이염 임시비밀번호입니다." + "[" + myName + "]" + str + "입니다.");
		updatePassword(str, userEmail);
		return dto;
	}

	private void updatePassword(String str, String userEmail) {
		String pw = password.encode(str);
		String email = userMapper.findUserByUserId(userEmail).getUserEmail();
		UserVo vo = new UserVo();
		vo.setPw(pw);
		vo.setUserEmail(email);
		userMapper.updateUserPassword(vo);
	}

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
	
	public void mailSend(MailDto mailDto) {
        System.out.println("이멜 전송 완료!");
        MimeMessage message = ms.createMimeMessage();  
        
        String htmlStr = mailDto.getMessage() + "<br><a href=" + "http://localhost/changePw?userEmail=" + mailDto.getAddress() + ">비밀번호 변경하러 가기</a>";
        
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
