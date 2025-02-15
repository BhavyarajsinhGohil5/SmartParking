package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

@Controller
public class SessionController {

	@Autowired
	UserRepository repoUser; 
	
	@GetMapping(value = {"/" , "signup"})
	public String signup() {
		return "Signup";
	}
	
	@GetMapping("login")
	public String login(String email, String password) {
		return "Login";
	}
	
	@PostMapping("saveuser")
	public String saveUser(UserEntity users) {
		
		// read
				System.out.println(users.getUserId());
				
				System.out.println(users.getFirstName());
				repoUser.save(users);
				System.out.println(users.getLastName());
				repoUser.save(users);
				System.out.println(users.getGender());
				repoUser.save(users);
				System.out.println(users.getEmail());
				repoUser.save(users);
				System.out.println(users.getPassword());
				repoUser.save(users);
				System.out.println(users.getConfirmpassword());
				repoUser.save(users);
				System.out.println(users.getContactNum());
				repoUser.save(users);
				System.out.println(users.getCity());
				repoUser.save(users);
				System.out.println(users.getRole());
				repoUser.save(users);
				
	
		return "Signup";
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