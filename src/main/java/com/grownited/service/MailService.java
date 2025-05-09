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
		String subject = "Welcome to SmartParking";
		String body = "Hey " + firstName 
				+ ", Welcome a board and look forward to enjoy our service with you. If you have any questions, feel free to reach out - we're here to help!";
		String from = "bhavyarajgohil143@gmail.com";
		
		SimpleMailMessage message = new SimpleMailMessage();
		
		message.setFrom(from);
		message.setTo(email);
		message.setSubject(subject);
		message.setText(body);
		
		 mailSender.send(message);
	}  
	

	public void sendOtpForForgetPassword(String email, String firstName,String otp) {
		String subject = "OTP for Resetpassword";
		String body = "Hey " + firstName
				+ ", It seems you have request for forget password, please use below otp for reset password.  If not then simply ignore the message!OTP:"+otp;
		String from = "bhavyarajgohil143@gmail.com";

		// logic
		SimpleMailMessage message = new SimpleMailMessage();

		message.setFrom(from);
		message.setTo(email);
		message.setSubject(subject);
		message.setText(body);

		mailSender.send(message);

	}
	 public boolean sendContactMail(String email, String message) {
		 try {
		        SimpleMailMessage mailMessage = new SimpleMailMessage();
		        mailMessage.setTo("parkingadmin@yopmail.com"); // Replace with your actual email
		        mailMessage.setSubject("New Inquiry from Smart Parking Contact Form");

		        String mailBody = "You have received a new message from the Smart Parking website contact form.\n\n"
		                        + "Sender Email: " + email + "\n"
		                        + "Message:\n"
		                        + message + "\n\n"
		                        + "Please respond to the sender as soon as possible.";

		        mailMessage.setText(mailBody);
		        mailSender.send(mailMessage);
		        return true;
		    } catch (Exception e) {
		        e.printStackTrace();
		        return false;
		    }
	
}
}
