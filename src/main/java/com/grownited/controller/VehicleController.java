package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.VehicleEntity;
import com.grownited.repository.VehicleRepository;

@Controller
public class VehicleController {
	
	
	@Autowired
	VehicleRepository repoVehicle; 

	@GetMapping("addvehicle")
	public String addVehicle() {
		return "AddVehicle";
	}
	
	
	@PostMapping("savevehicle")
	public String saveVehicle(VehicleEntity vehicle) {
		
		System.out.println(vehicle.getVehicleId());
		
		System.out.println(vehicle.getVehicleRegNo());
		System.out.println(vehicle.getVehicleType());
		repoVehicle.save(vehicle);
		
		
		return "AddVehicle";
	}
	
}
