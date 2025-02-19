package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.LocationEntity;
import com.grownited.repository.LocationRepository;

@Controller
public class LocationController {
	
	
	@Autowired
	LocationRepository repoLocation; 

	@GetMapping("addlocation")
	public String addLocation() {
		return "Location";
	}
	
	
	@PostMapping("savelocation")
	public String saveLocation(LocationEntity location) {
		
		System.out.println(location.getLocationId());
		
		System.out.println(location.getLocationName());
		repoLocation.save(location);
		
		
		return "Location";
	}
	
}
