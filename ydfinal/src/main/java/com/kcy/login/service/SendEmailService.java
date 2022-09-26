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
		MailDto dto = new MailDto();
		dto.setAddress(userEmail);
		dto.setTitle(myName + " 님의 KCY UNIV 임시비밀번호 안내 이메일입니다.");
		dto.setMessage("[" + myName + "]" + "님의 임시 비밀번호는 [ " + str + " ]입니다.");
		dto.setName(myName);
		dto.setPassword(str);
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

        int idx = 0;
        for (int i = 0; i < 10; i++) {
            idx = (int) (charSet.length * Math.random());
            str += charSet[idx];
        }
        return str;
	}
	
	// mail 전송을 위한 html 작성
	public void mailSend(MailDto mailDto) {
        MimeMessage message = ms.createMimeMessage();  
        
        String htmlStr = 
        		  "<div style='width: 400px; margin: auto; height: 490px; background-color: #344767; padding: 15px;'>"

        			+ "<div class='title' style='text-aling: center; font-weight: 700; font-size: 16px; color: #fff;'>KCY UNIV</div>"
        
        			+ "<div class='content' style='text-align: center; padding: 15px; height: 300px; border-radius: 5px; box-shadow: 4.0px 8.0px 8.0px hsl(0deg 0% 0% / 0.20); background-color: #fff;'>"

          			+ "<div class='content_1' style='font-size: 12px;' >"
          			+ "<img src='/aa/logo/KCYlogo.png' style='border: 1px solid #ddd; width: 200px; height: 200px'>"
          			+ "<p>"

          			+ mailDto.getName() + " 님, 안녕하세요. <br>"
          			+ "회원님의 새 비밀번호 설정을 안내해 드립니다. <br>"
          			+ "회원님의 임시 비밀번호는 [" + mailDto.getPassword() + "] 입니다. <br>"
          			+ "변경이 필요한 경우 아래 버튼을 눌러 새 비밀번호를 설정해 주시기 바랍니다."

        			+ "</p>"

        			+ "<div class='btn' style='text-align: center; margin-top: 20px; display: flex; flex-direction: column; align-items: center;'>"
        			+ "<button style='padding: 5px; width: 400px; height: 45px; background-color: #fff; color: #000; border: none; border-radius: 20px; margin-bottom: 15px; margin-top: 15px; box-shadow: 4.0px 8.0px 8.0px hsl(0deg 0% 0% / 0.20);'>"
        			+ "<a style='text-decoration: none; color: #344767; font-weight: 700;' href='http://kcy.lol/changePw?userEmail=" + mailDto.getAddress() + "'>비밀번호 재설정</a>"
        			+ "</button>"
        			+ "<button style='box-shadow: 4.0px 8.0px 8.0px hsl(0deg 0% 0% / 0.20); padding: 5px; width: 400px; height: 45px; background-color: #fff; color: #000; border: none; border-radius: 20px;'>"
        			
              		+ "<a style='text-decoration: none; color: #344767; font-weight: 700;' href='http://kcy.lol/login'>로그인</a>"
              		+ "</button>"
              		+ "</div>"
                    + "</div>"


        			+ "</div>"
              		+ "</div>";
        
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
        ms.send(message);
	}
	
    
}
