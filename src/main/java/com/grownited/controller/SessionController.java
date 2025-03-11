package com.grownited.controller;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SessionController {

	@Autowired
	MailService serviceMail;
	
	
	@Autowired
	UserRepository repoUser; 
	
	@Autowired
	PasswordEncoder encoder;
	
	
	
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
				//System.out.println(users.getUserId());
				
				System.out.println(users.getFirstName());
				repoUser.save(users);
				//System.out.println(users.getLastName());
				repoUser.save(users);
				//System.out.println(users.getGender());
				repoUser.save(users);
				//System.out.println(users.getEmail());
				repoUser.save(users);
				System.out.println(users.getPassword());
				repoUser.save(users);
				System.out.println(users.getConfirmpassword());
				repoUser.save(users);
				System.out.println(users.getContactNum());
				repoUser.save(users);
				System.out.println(users.getCity());
				repoUser.save(users);
//		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(5);//salt
		String encPassword = encoder.encode(users.getPassword());
		users.setPassword(encPassword);
		
				users.setRole("USER");
				users.setCreatedAt(new Date());
				users.setActive(true);
				
				
//				String encPassword = encoder.encode(users.getPassword());
//				users.setPassword(encPassword);
				//System.out.println(users.getRole());
				repoUser.save(users);
				
				
				serviceMail.sendWelcomeMail(users.getEmail(), users.getFirstName());
	
		return "redirect:/listuser";
	}
	
	

	@PostMapping("authenticate")
	public String authenticate(String email, String password,Model model, HttpSession session) {
		
		System.out.println(email);
		System.out.println(password);
		
		
		Optional<UserEntity> op = repoUser.findByEmail(email);
		
		if (op.isPresent()) {
			
			UserEntity dbUser = op.get();
			session.setAttribute("user", dbUser);
//			// boolean ans = encoder.matches(password, dbUser.getPassword());
			
//			if (encoder.matches(password, dbUser.getPassword())) {
//				return "redirect:/admindashboard";
//				
//			}if (ans==true) {
//			session.setAttribute("user", dbUser);
//			if (dbUser.getRole().equals("ADMIN")) {
//				return "AdminDashboard";
//			}else if(dbUser.getRole().equals("USER")) {
//				return "Home";
//
//			}
//			
//		}if (op.isPresent()) {
			
		
			boolean ans = encoder.matches(password, dbUser.getPassword());
			if (ans==true) {
				session.setAttribute("user", dbUser);
				if (dbUser.getRole().equals("ADMIN")) {
					return "AdminDashboard";
				}else if(dbUser.getRole().equals("USER")) {
					return "Home";

				}
				
			}
			
		
			return "redirect:/admindashboard";
		}
		model.addAttribute("error", "Invalid Credentials");
		return"Login";
	}
	
	
	
	
	//open forgetpassword jsp
	@GetMapping(value = {"forgetpassword","ForgetPassword"})
	public String forgetPassword() {
		return "Forgetpassword";
	}
	
	//submit on forgetpassword ->
	@PostMapping("sendOtp")
	public String sendOtp(String email, Model model) {
		// email valid
				Optional<UserEntity> op = repoUser.findByEmail(email);
				if (op.isEmpty()) {
					// email invalid
					model.addAttribute("error", "Email not found");
					return "ForgetPassword";
				} else {
					// email valid
					// send mail otp
					// opt generate
					// send mail otp
					String otp = "";
					otp = (int) (Math.random() * 1000000) + "";// 0.25875621458541

					UserEntity users = op.get();
					users.setOtp(otp);
					repoUser.save(users);// update otp for user
					serviceMail.sendOtpForForgetPassword(email, users.getFirstName(), otp);
					return "Changepassword";

				}
	}
	
	@PostMapping("updatepassword")
	public String updatePassword(String email, String password, String otp, Model model) {
		
		Optional<UserEntity> op = repoUser.findByEmail(email);
		if (op.isEmpty()) {
			model.addAttribute("error", "Invalid Data");
			return "Changepassword";
		} else {
			UserEntity users = op.get();
			if (users.getOtp().equals(otp)) {
				String encPwd = encoder.encode(password);
				users.setPassword(encPwd);
				users.setOtp("");
				repoUser.save(users);// update
			} else {

				model.addAttribute("error", "Invalid Data");
				return "Changepassword";
			}
		}
		model.addAttribute("msg","Password updated");
		return "Login";
	}
	
	@GetMapping("listuser")
	public String listUser(Model model) {
		List<UserEntity> userList = repoUser.findAll();
		
		//how to send data from controller to jsp
		//Model
		model.addAttribute("userList", userList);
							//dataName , dataValue
		
		
		return "ListUser";
	}
	
	@GetMapping("viewuser")
	public String viewUser(Integer userId,Model model) {
		
		
		System.out.println("id ===>" + userId);
		Optional<UserEntity> op = repoUser.findById(userId);
		if(op.isEmpty()) {
			//not found
		}else {
			 //data found
			UserEntity user =  op.get();
			//send data to jsp -->
			model.addAttribute("user",user);
		}
		
		
		return "ViewUser";
	}
	
	@GetMapping("deleteuser")
	public String deleteUser(Integer userId) {
		repoUser.deleteById(userId);
		return"redirect:/listuser";
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
}