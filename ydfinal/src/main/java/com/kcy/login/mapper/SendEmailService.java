package com.kcy.login.mapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

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
	
	public MailDto createMailAndChangePassword(String userEmail, String userName) {
		String str = getTempPassword();
		MailDto dto = new MailDto();
		dto.setAddress(userEmail);
		dto.setTitle(userName + "님의 예담직업전문학교 임시비밀번호 안내 이메일입니다.");
		dto.setMessage("하이염 임시비밀번호입니다." + "[" + userName + "]" + str + "입니다.");
		updatePassword(str, userEmail);
		return null;
	}

	private void updatePassword(String str, String userEmail) {
		String pw = password.encode(str);
		String id = userMapper.findUserByUserId(userEmail).getUserId();
		userMapper.updateUserPassword(id, pw);
		
	}

	private String getTempPassword() {
		char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
                'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

        String str = "";

        int idx = 0;
        for (int i = 0; i < 10; i++) {
            idx = (int) (charSet.length * Math.random());
            str += charSet[idx];
        }
        return str;
	}
	
	public void mailSend(MailDto mailDto) {
        System.out.println("이멜 전송 완료!");
        SimpleMailMessage message = new SimpleMailMessage();
        
        message.setTo(mailDto.getAddress());
        message.setFrom(SendEmailService.FROM_ADDRESS);
        message.setSubject(mailDto.getTitle());
        message.setText(mailDto.getMessage());
        
        System.out.println(message);
        ms.send(message);
	}
	
    
}
