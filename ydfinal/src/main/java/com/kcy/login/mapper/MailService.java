package com.kcy.login.mapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class MailService {
	@Autowired
	private JavaMailSender ms;
	
	public void sendMail(MailDto mail) {
		SimpleMailMessage message = new SimpleMailMessage();
        
        message.setTo(mail.getAddress());
        message.setSubject(mail.getTitle());
        message.setText(mail.getMessage());
        
        ms.send(message);
        
	}
}
