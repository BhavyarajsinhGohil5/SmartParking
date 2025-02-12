package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class VehicleController {

	@GetMapping("addvehicle")
	public String addVehicle() {
		return "AddVehicle";
	}
	
	
	@PostMapping("savevehicle")
	public String saveVehicle() {
		return "login";
	}
	
}
