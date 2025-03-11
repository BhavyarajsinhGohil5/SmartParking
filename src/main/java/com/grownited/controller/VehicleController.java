package com.grownited.controller;

import java.util.List;
//import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.entity.VehicleEntity;
import com.grownited.repository.UserRepository;
import com.grownited.repository.VehicleRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class VehicleController {
	
	@Autowired
	UserRepository repoUser; 
	
	@Autowired
	VehicleRepository repoVehicle; 

	@GetMapping("addvehicle")
	public String addVehicle(Model model) {
		
		// select * from users;
		List<UserEntity> allUser = repoUser.findAll();// all user

		
		model.addAttribute("allUser", allUser);
		
		
		
		return "AddVehicle";
	}
	
	
	@PostMapping("savevehicle")
	public String saveVehicle(VehicleEntity vehicle, HttpSession session) {
		
	UserEntity user =	(UserEntity)session.getAttribute("user");
	Integer userId = user.getUserId();
	vehicle.setUserId(userId);
		
//		System.out.println(vehicle.getVehicleId());
//		
//		System.out.println(vehicle.getVehicleRegNo());
//		System.out.println(vehicle.getVehicleType());
		repoVehicle.save(vehicle);
		
		
		return "redirect:/addvehicle";
	}
	
	@GetMapping("listvehicle")
	public String listVehicle(Model model) {
		List<VehicleEntity> vehicleList = repoVehicle.findAll();
		
		//how to send data from controller to jsp
		//Model
		model.addAttribute("vehicleList", vehicleList);
							//dataName , dataValue
		
		
		return "ListVehicle";
	}
	
//
//	@GetMapping("viewvehicle")
//	public String viewVehicle(Integer vehicleId,Model model) {
//		
//		
//		System.out.println("id ===>" + vehicleId);
//		Optional<VehicleEntity> op = repoVehicle.findById(vehicleId);
//		if(op.isEmpty()) {
//			//not found
//		}else {
//			 //data found
//			VehicleEntity vehicle =  op.get();
//			//send data to jsp -->
//			model.addAttribute("vehicle",vehicle);
//		}
//		
//		
//		return "ViewVehicle";
//	}
//	
//	@GetMapping("deletevehicle")
//	public String deleteVehicle(Integer vehicleId) {
//		repoVehicle.deleteById(vehicleId);
//		return"redirect:/listvehicle";
//	}
	
}
