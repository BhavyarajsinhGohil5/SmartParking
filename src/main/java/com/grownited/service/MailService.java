package com.grownited.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;


@Service
public class MailService {
	
	@Autowired
	JavaMailSender mailSender;

	public void sendWelcomeMail(String email , String firstName) {
		String subject = "Welcome mail";
		String body = "Hey " + firstName 
				+ ", Welcome a board and look forward to enjoy our service with you. If you have any questions, feel free to reach out - we're here to help!";
		String from = "bhavyarajgohil143@gmail.com";
		
		SimpleMailMessage message = new SimpleMailMessage();
		
		message.setFrom(from);
		message.setText(email);
		message.setSubject(subject);
		message.setText(body);
		
		 mailSender.send(message);
	}  
}
