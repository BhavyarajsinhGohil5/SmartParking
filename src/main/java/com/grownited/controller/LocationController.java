package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.LocationEntity;

import com.grownited.repository.LocationRepository;

@Controller
public class LocationController {
	
	
	@Autowired
	LocationRepository repoLocation; 

	@GetMapping("adminaddlocation")
	public String addLocation() {
		return "Location";
	}
	
	
	@PostMapping("savelocation")
	public String saveLocation(LocationEntity location) {
		
		System.out.println(location.getLocationId());
		
		System.out.println(location.getLocationName());
		repoLocation.save(location);
		
		
		return "redirect:/location";
	}
	

	@GetMapping("adminlistlocation")
	public String listLocation(Model model) {
		List<Object[]> listLocation = repoLocation.getAll();
		
		//how to send data from controller to jsp
		//Model
		model.addAttribute("allLocation", listLocation);
							//dataName , dataValue
		
		
		return "ListLocation";
	}

	@GetMapping("adminviewlocation")
	public String viewLocation(Integer locationId, Model model) {
		List<Object[]> op = repoLocation.getByLocationId(locationId);
		model.addAttribute("location", op);
		return "ViewLocation";
	}
	
	@GetMapping("admindeletelocation")
	public String deleteLocation(Integer locationId) {
		repoLocation.deleteById(locationId);
		return"redirect:/adminlistlocation";
	}
	
	@GetMapping("admineditlocation")
	public String editLocation(Integer locationId,Model model) {
		Optional<LocationEntity> op = repoLocation.findById(locationId);
		if (!op.isPresent()) {
			return "redirect:/adminlistlocation";
		} else {
			model.addAttribute("location",op.get());
			return "EditLocation";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("adminupdatelocation")
	public String updateLocation(LocationEntity location) {//pcode vhreg type vid 
		
		System.out.println(location.getLocationId());//id? db? 

		Optional<LocationEntity> op = repoLocation.findById(location.getLocationId());
		
		if(op.isPresent())
		{
			LocationEntity dbLocation = op.get(); //pcode vhreg type id userId 
		
			dbLocation.setLocationName(location.getLocationName());
			repoLocation.save(dbLocation);
		}
		return "redirect:/adminlistlocation";
	}  
    
}
