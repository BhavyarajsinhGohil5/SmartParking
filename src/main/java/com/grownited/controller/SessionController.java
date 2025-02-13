package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;

@Controller
public class SessionController {

	@GetMapping(value = {"/" , "signup"})
	public String signup() {
		return "Signup";
	}
	
	@GetMapping("login")
	public String login(String email, String password) {
		return "Login";
	}
	
	@PostMapping("saveuser")
	public String saveUser(UserEntity userEntity) {
		
		// read
				System.out.println(userEntity.getFirstName());
				System.out.println(userEntity.getLastName());
				System.out.println(userEntity.getGender());
				System.out.println(userEntity.getEmail());
				System.out.println(userEntity.getPassword());
				System.out.println(userEntity.getConfirmpassword());
	
		return "Login";
	}
	
	//open forgetpassword jsp
	@GetMapping(value = {"forgetpassword","Forgetpassword"})
	public String forgetPassword() {
		return "Forgetpassword";
	}
	
	//submit on forgetpassword ->
	@PostMapping("sendOtp")
	public String sendOtp() {
		return "Changepassword";
	}
	
	@PostMapping("updatepassword")
	public String updatePassword() {
		return "Login";
	}
}