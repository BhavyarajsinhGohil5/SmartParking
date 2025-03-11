package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.LocationEntity;
import com.grownited.entity.ParkingEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.LocationRepository;
import com.grownited.repository.ParkingRepository;
import com.grownited.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class ParkingController {

    @Autowired
    ParkingRepository repoParking;

    @Autowired
    LocationRepository repoLocation;
    
    @Autowired
    UserRepository repoUser;
    
    
    @GetMapping("addparking")
    public String addParking(Model model) {
    	
    	
		// select * from location;
		List<LocationEntity> allLocation = repoLocation.findAll();// all location

		
		model.addAttribute("allLocation", allLocation);
    	
		// select * from users;
		List<UserEntity> allUser = repoUser.findAll();// all user

		
		model.addAttribute("allUser", allUser);
    	
    	
        return "AddParking";
    }

    @PostMapping("saveparking")
    public String saveParking(ParkingEntity parking, HttpSession session) {
        
    	UserEntity users =	(UserEntity)session.getAttribute("user");
    	Integer userId = users.getUserId();
    	parking.setUserId(userId);
    	
    	LocationEntity location =	(LocationEntity)session.getAttribute("location");
    	Integer locationId = location.getLocationId();
    	parking.setLocationId(locationId);
    	
            // Log all parking entity fields
//            System.out.println(parking.getParkingId());
//            System.out.println(parking.getAddress());
//            System.out.println(parking.getTitle());
//            System.out.println(parking.getParkingType());
//            System.out.println(parking.getOwnerId());
//            System.out.println(parking.getLocationId());
//            System.out.println(parking.getHourlyCharge2wheeler());
//            System.out.println(parking.getHourlyCharge4wheeler());
//            System.out.println(parking.getTotalCapacity2wheeler());
//            System.out.println(parking.getTotalCapacity4wheeler());
//            System.out.println(parking.getLatitude());
//            System.out.println(parking.getLongitude());
//    	parking.setTitle("Example Parking");
//    	parking.setAddress("123 Parking St");
//    	parking.setLocationId(1); // Example location ID
//    	parking.setOwnerId(1); // Example owner ID
//    	parking.setTotalCapacity2wheeler(50);
//    	parking.setTotalCapacity4wheeler(30);
//    	parking.setHourlyCharge2wheeler(30);
//    	parking.setHourlyCharge4wheeler(50);
//    	parking.setParkingType("road");
//    	parking.setLatitude(12.9716); // Example latitude
//    	parking.setLongitude(77.5946); // Example longitude
    	System.out.println("Title: " + parking.getTitle());
    	System.out.println("Address: " + parking.getAddress());
    	
    	System.out.println("ParkingType: " + parking.getParkingType());
    	
    	System.out.println("TotalCapacity(2 Wheeler): " + parking.getTotalCapacity2wheeler());
    	System.out.println("TotalCapacity(4 Wheeler): " + parking.getTotalCapacity4wheeler());
    	
    	System.out.println("HourlyChargeTwoWheeler: " + parking.getHourlyCharge2wheeler());
    	System.out.println("HourlyChargeFourWheeler: " + parking.getHourlyCharge4wheeler());
    System.out.println("Latitude: " + parking.getLatitude());	
    System.out.println("Longitude: " + parking.getLongitude());
            // Save entity to the database (just once)
            repoParking.save(parking);
//
//            //System.out.println("Parking details saved successfully.");
//        
//        //catch (Exception e) {
////            System.err.println("Error saving parking details: " + e.getMessage());
////            e.printStackTrace();
////            return "ErrorPage"; // Handle the error properly
////        }

        return "redirect:/addparking"; // Return the same page or redirect to a success page
    }
    
    @GetMapping("listparking")
	public String listParking(Model model) {
		List<ParkingEntity> parkingList = repoParking.findAll();
		
		//how to send data from controller to jsp
		//Model
		model.addAttribute("parkingList", parkingList);
							//dataName , dataValue
		
		
		return "ListParking";
	}
    
    
    @GetMapping("viewparking")
	public String viewParking(Integer parkingId,Model model) {
		
		
		System.out.println("id ===>" + parkingId);
		Optional<ParkingEntity> op = repoParking.findById(parkingId);
		if(op.isEmpty()) {
			//not found
		}else {
			 //data found
			ParkingEntity parking =  op.get();
			//send data to jsp -->
			model.addAttribute("parking",parking);
		}
		
		
		return "ViewParking";
	}
	
	@GetMapping("deleteparking")
	public String deleteUser(Integer parkingId) {
		repoParking.deleteById(parkingId);
		return"redirect:/listparking";
	}
    
    
    
    
    
}