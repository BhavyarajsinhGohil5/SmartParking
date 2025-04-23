package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ParkingEntity;
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

	@GetMapping("adminaddvehicle")
	public String addVehicle(Model model) {
		
		// select * from users;
		List<UserEntity> allUser = repoUser.findAll();// all user

		model.addAttribute("vehicle", new VehicleEntity());
		model.addAttribute("allUser", allUser);
		
		
		
		return "AddVehicle";
	}
	
	
	@PostMapping("savevehicle")
	public String saveVehicle(VehicleEntity VehicleEntity, HttpSession session) {
		
	UserEntity user =	(UserEntity)session.getAttribute("user");
	Integer userId = VehicleEntity.getUserId();
	VehicleEntity.setUserId(userId);
	
//	Integer userId = user.getUserId();
//	vehicle.setUserId(userId);
		
//		System.out.println(vehicle.getVehicleId());
//		
//		System.out.println(vehicle.getVehicleRegNo());
//		System.out.println(vehicle.getVehicleType());
//		repoVehicle.save(vehicle);
	repoVehicle.save(VehicleEntity);
		
		return "redirect:/adminaddvehicle";
	}
	
	@GetMapping("adminlistvehicle")
	public String listVehicle(Model model) {
		List<Object[]> listVehicle = repoVehicle.getAll();
		
		//how to send data from controller to jsp
		//Model
		model.addAttribute("allVehicle", listVehicle);
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
	
	@GetMapping("adminviewvehicle")
	public String viewVehicle(Integer vehicleId, Model model) {
		List<Object[]> op = repoVehicle.getByVehicleId(vehicleId);
		model.addAttribute("vehicle", op);
		return "ViewVehicle";
	}
//	
	@GetMapping("admindeletevehicle")
	public String deleteVehicle(Integer vehicleId) {
		repoVehicle.deleteById(vehicleId);
		return"redirect:/adminlistvehicle";
	}
	
	@GetMapping("admineditvehicle")
	public String editVehicle(Integer vehicleId,Model model) {
		Optional<VehicleEntity> op = repoVehicle.findById(vehicleId);
		if (!op.isPresent()) {
			return "redirect:/listvehicle";
		} else {
			model.addAttribute("vehicle",op.get());
			return "EditVehicle";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("adminupdatevehicle")
	public String updateVehicle(VehicleEntity vehicle) {//pcode vhreg type vid 
		
		System.out.println(vehicle.getVehicleId());//id? db? 

		Optional<VehicleEntity> op = repoVehicle.findById(vehicle.getVehicleId());
		
		if(op.isPresent())
		{
			VehicleEntity dbVehicle = op.get(); //pcode vhreg type id userId 
			//dbVehicle.setParkingCode(vehicleEntity.getParkingCode());//code 
			dbVehicle.setVehicleRegNo(vehicle.getVehicleRegNo());//type 
			dbVehicle.setVehicleType(vehicle.getVehicleType());//type 
			//
			repoVehicle.save(dbVehicle);
		}
		return "redirect:/adminlistvehicle";
	}
}
