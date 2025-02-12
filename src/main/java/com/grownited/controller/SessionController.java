package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SessionController {

	@GetMapping(value = {"/" , "signup"})
	public String signup() {
		return "Signup";
	}
	
	@GetMapping("login")
	public String login() {
		return "Login";
	}
	
	@PostMapping("saveuser")
	public String saveUser() {
		return "Login";
	}
	
	//open forgetpassword jsp
	@GetMapping(value = {"forgetpassword","Forgetpassword"})
	public String forgetPassword() {
		return "Forgetpassword";
	}
	
	//submit on forgetpassword
	@PostMapping("sendOtp")
	public String sendOtp() {
		return "Changepassword";
	}
	
	@PostMapping("updatepassword")
	public String updatePassword() {
		return "Login";
	}
}