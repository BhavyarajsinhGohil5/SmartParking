package com.grownited.controller.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import com.grownited.repository.ParkingRepository;
import com.grownited.entity.ParkingEntity;
import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@RestController
public class AjaxController {
//
//
	@Autowired
	ParkingRepository ParkingRepository; 
//	
	
	@GetMapping("/getallparkingbylocationid/{locationId}")
	public List<ParkingEntity> getAllParkingByLocationId(@PathVariable Integer locationId) {
		System.out.println(locationId);
//		
		List<ParkingEntity> allParking  =  ParkingRepository.findByLocationId(locationId);
//			
		
		return allParking;
	}

	@GetMapping("/getallparkingbyparkingid/{parkingId}")
	public List<ParkingEntity> getAllParkingByParkingId(@PathVariable Integer parkingId) {
		System.out.println(parkingId);
//		
		List<ParkingEntity> allParking  =  ParkingRepository.findByParkingId(parkingId);
//			
		
		return allParking;
	}
}
