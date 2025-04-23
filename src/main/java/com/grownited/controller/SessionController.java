package com.grownited.controller;

import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.io.IOException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.bind.annotation.RequestParam;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
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
	
	@Autowired
	Cloudinary cloudinary;
	
	@GetMapping(value = {"/" , "signup"})
	public String signup() {
		return "Signup";
	}
	
	@GetMapping("login")
	public String login(String email, String password) {
		return "Login";
	}
	
	@PostMapping("saveuser")
	public String saveUser(UserEntity users, MultipartFile profilePic) {
		
		System.out.println(profilePic.getOriginalFilename());// file name
		
		try {
			Map result = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
//			System.out.println(result);
//			System.out.println(result.get("url"));
			users.setProfilePicPath(result.get("url").toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// read
				//System.out.println(users.getUserId());
				
//				System.out.println(users.getFirstName());
//				repoUser.save(users);
//				//System.out.println(users.getLastName());
//				repoUser.save(users);
//				//System.out.println(users.getGender());
//				repoUser.save(users);
//				//System.out.println(users.getEmail());
//				repoUser.save(users);
//				System.out.println(users.getPassword());
//				repoUser.save(users);
//				System.out.println(users.getConfirmpassword());
//				repoUser.save(users);
//				System.out.println(users.getContactNum());
//				repoUser.save(users);
//				System.out.println(users.getCity());
//				repoUser.save(users);
//		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(5);//salt
		
				users.setRole("USER");
				users.setCreatedAt(new Date());
				users.setActive(true);

				String encPassword = encoder.encode(users.getPassword());
				users.setPassword(encPassword);
				
//				String encPassword = encoder.encode(users.getPassword());
//				users.setPassword(encPassword);
				//System.out.println(users.getRole());
				repoUser.save(users);
				
				
				serviceMail.sendWelcomeMail(users.getEmail(), users.getFirstName());
	
		return "redirect:/login";
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
				}
				else if(dbUser.getRole().equals("OWNER")) {
					return "AdminDashboard";

				}else if(dbUser.getRole().equals("USER")) {
					return "Home";

				}else {
					model.addAttribute("error", "Please contact Admin with Error Code #0991");
					return "Login";
				}
				
			}
			
		
			//return "redirect:/admindashboard";
			return "Login";
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
		if (!op.isPresent()) {
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
	
	@GetMapping("adminlistuser")
	public String listUser(Model model) {
		List<Object[]> listUser = repoUser.getAll();
		
		//how to send data from controller to jsp
		//Model
		model.addAttribute("allUser", listUser);
							//dataName , dataValue
		
		
		return "ListUser";
	}
	
	/*
	 * @GetMapping("viewuser") public String viewUser(Integer userId,Model model) {
	 * 
	 * 
	 * System.out.println("id ===>" + userId); Optional<UserEntity> op =
	 * repoUser.findById(userId); if(op.isEmpty()) { //not found }else { //data
	 * found UserEntity user = op.get(); //send data to jsp -->
	 * model.addAttribute("user",user); }
	 * 
	 * 
	 * return "ViewUser"; }
	 */
	@GetMapping("adminviewuser")
	public String viewUser(Integer userId, Model model) {
		List<Object[]> op = repoUser.getByUserId(userId);
		model.addAttribute("user", op);
		return "ViewUser";
	}
	
	@GetMapping("admindeleteuser")
	public String deleteUser(Integer userId) {
		repoUser.deleteById(userId);
		return"redirect:/adminlistuser";
	}
	@GetMapping("adminedituser")
	public String editUser(Integer userId,Model model) {
		Optional<UserEntity> op = repoUser.findById(userId);
		if (!op.isPresent()) {
			return "redirect:/listuser";
		} else {
			model.addAttribute("user",op.get());
			return "EditUser";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("adminupdateuser")
	public String updateUser(UserEntity users, @RequestParam("profilePic") MultipartFile profilePic) {//pcode vhreg type vid 
		
		System.out.println(users.getUserId());//id? db? 

		System.out.println(users.getProfilePicPath());
		
		Optional<UserEntity> op = repoUser.findById(users.getUserId());
		
		
		
		try {
			Map result = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
			System.out.println(result);
			System.out.println(result.get("url"));
			users.setProfilePicPath(result.get("url").toString());
			

		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		System.out.println(users.getProfilePicPath());
		
		
		
		if(op.isPresent())
		{
			UserEntity dbUser = op.get(); //pcode vhreg type id userId 
			//dbVehicle.setParkingCode(vehicleEntity.getParkingCode());//code 
			dbUser.setFirstName(users.getFirstName());//type 
			dbUser.setLastName(users.getLastName());//type 
			dbUser.setEmail(users.getEmail());//type 
			dbUser.setContactNum(users.getContactNum());//type 
			dbUser.setCity(users.getCity());
			dbUser.setGender(users.getGender());//type 
			dbUser.setProfilePicPath(users.getProfilePicPath());//type 
			dbUser.setPassword(users.getPassword());//type 
			dbUser.setConfirmpassword(users.getConfirmpassword());//type 
			//dbUser.setCreatedAt(users.getCreatedAt());
			dbUser.setRole(users.getRole());
			
//			dbParking.setActive(parking.getActive());
			//dbUser.setActive(users.getActive().);
			//dbUser.setActive(users.getActive().equalsIgnoreCase("Active") ? "Active" : "Inactive");
			//
			repoUser.save(dbUser);
		}
		return "redirect:/adminlistuser";
	}  
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
}