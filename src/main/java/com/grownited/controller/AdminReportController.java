package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.ReservationRepository;
import com.grownited.repository.UserRepository;

@Controller
public class AdminReportController {

	@Autowired
	UserRepository userRepository;
	
	@GetMapping("adminactiveusers")
	public String adminActiveUsers(Model model) {
	
		List<UserEntity> users = userRepository.findByRoleAndActive("USER",true);
		
		
		model.addAttribute("userList",users);
		return "AdminActiveUsers";
		
	}
	
	
	
}
