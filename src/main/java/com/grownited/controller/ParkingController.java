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
import com.grownited.entity.VehicleEntity;
import com.grownited.repository.LocationRepository;
import com.grownited.repository.ParkingRepository;
import com.grownited.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class ParkingController {

	@Autowired
	LocationRepository repoLocation;
	
	@Autowired
	UserRepository repoUser;
	
    @Autowired
    ParkingRepository repoParking;

    
    
    @GetMapping("adminaddparking")
    public String addParking(Model model) {
    	
    	
		// select * from location;
		List<LocationEntity> allLocation = repoLocation.findAll();// all location


		// select * from users;
		List<UserEntity> allUser = repoUser.findAll();// all user

		
		model.addAttribute("parking", new ParkingEntity());
		model.addAttribute("allLocation", allLocation);
		model.addAttribute("allUser", allUser);
    	
    	
        return "AddParking";
    }

    @PostMapping("saveparking")
    public String saveParking(ParkingEntity ParkingEntity, HttpSession session) {
        
    	//session.setAttribute("user", loggedInUser);

    	
//    	UserEntity user = (UserEntity)session.getAttribute("user");
//    	Integer userId = ParkingEntity.getUserId();
//    	ParkingEntity.setUserId(userId);
    	//parking.getUserId(userId);
    	
    	LocationEntity location = (LocationEntity)session.getAttribute("location");
    	Integer locationId = ParkingEntity.getLocationId();
    	ParkingEntity.setLocationId(locationId);
    	//parking.getLocationId(locationId);
    	
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
//    	System.out.println("Title: " + parking.getTitle());
//    	System.out.println("Address: " + parking.getAddress());
//    	
//    	System.out.println("ParkingType: " + parking.getParkingType());
//    	
//    	System.out.println("TotalCapacity(2 Wheeler): " + parking.getTotalCapacity2wheeler());
//    	System.out.println("TotalCapacity(4 Wheeler): " + parking.getTotalCapacity4wheeler());
//    	
//    	System.out.println("HourlyChargeTwoWheeler: " + parking.getHourlyCharge2wheeler());
//    	System.out.println("HourlyChargeFourWheeler: " + parking.getHourlyCharge4wheeler());
//    System.out.println("Latitude: " + parking.getLatitude());	
//    System.out.println("Longitude: " + parking.getLongitude());
            // Save entity to the database (just once)
//    	if (ParkingEntity.getActive() == null) {
//            ParkingEntity.setActive("true"); // Default to active if not set
//        }    
//    	 if (ParkingEntity.getActive() == null || ParkingEntity.getActive().isEmpty()) {
//             ParkingEntity.setActive("Inactive");
//         }
    	 ParkingEntity.setActive(ParkingEntity.getActive().equalsIgnoreCase("Active") ? "Active" : "Inactive");
    	repoParking.save(ParkingEntity);
//
//            //System.out.println("Parking details saved successfully.");
//        
//        //catch (Exception e) {
//          System.err.println("Error saving parking details: " + e.getMessage());
//           e.printStackTrace();
//            return "ErrorPage"; // Handle the error properly
//       }

        return "redirect:/adminaddparking"; // Return the same page or redirect to a success page
    }
    
    @GetMapping("adminlistparking")
	public String listParking(Model model) {
    	
//    	List<ParkingEntity> parkingList = repoParking.findAll();
		List<Object[]> listParking = repoParking.getAll();
		
		//how to send data from controller to jsp
		//Model
		model.addAttribute("allParking", listParking);
							//dataName , dataValue
		
		
		return "ListParking";
	}
    
   
//    @GetMapping("viewparking")
//	public String viewParking(Integer parkingId,Model model) {
//		
//		
//		System.out.println("id ===>" + parkingId);
//		Optional<ParkingEntity> op = repoParking.findById(parkingId);
//		if(op.isEmpty()) {
//			//not found
//		}else {
//			 //data found
//			ParkingEntity parking =  op.get();
//			//send data to jsp -->
//			model.addAttribute("parking",parking);
//		}
//		
//		
//		return "ViewParking";
//	}
	@GetMapping("adminviewparking")
	public String viewParking(Integer parkingId, Model model) {
		List<Object[]> op = repoParking.getByParkingId(parkingId);
		model.addAttribute("parking", op);
		return "ViewParking";
	}
	
	@GetMapping("admindeleteparking")
	public String deleteUser(Integer parkingId) {
		repoParking.deleteById(parkingId);
		return"redirect:/adminlistparking";
	}
	
	@GetMapping("admineditparking")
	public String editParking(Integer parkingId,Model model) {
		Optional<ParkingEntity> op = repoParking.findById(parkingId);
		if (!op.isPresent()) {
			return "redirect:/adminlistparking";
		} else {
			model.addAttribute("parking",op.get());
			return "EditParking";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("adminupdateparking")
	public String updateParking(ParkingEntity parking) {//pcode vhreg type vid 
		
		System.out.println(parking.getParkingId());//id? db? 

//    	LocationEntity location = (LocationEntity)session.getAttribute("location");
//    	Integer locationId = parking.getLocationId();
//    	parking.setLocationId(locationId);
//		
//		
		
		Optional<ParkingEntity> op = repoParking.findById(parking.getParkingId());
		
		if(op.isPresent())
		{
			ParkingEntity dbParking = op.get(); //pcode vhreg type id userId 
			//dbVehicle.setParkingCode(vehicleEntity.getParkingCode());//code 
			dbParking.setTitle(parking.getTitle());//type 
			dbParking.setAddress(parking.getAddress());//type 
			dbParking.setTotalCapacity2wheeler(parking.getTotalCapacity2wheeler());//type 
			dbParking.setTotalCapacity4wheeler(parking.getTotalCapacity4wheeler());//type 
			dbParking.setHourlyCharge2wheeler(parking.getHourlyCharge2wheeler());//type 
			dbParking.setHourlyCharge4wheeler(parking.getHourlyCharge4wheeler());//type 
			dbParking.setParkingType(parking.getParkingType());//type 
			dbParking.setLatitude(parking.getLatitude());//type 
			dbParking.setLongitude(parking.getLongitude());
//			dbParking.setActive(parking.getActive());
			
			dbParking.setLocationId(parking.getLocationId());
			dbParking.setActive(parking.getActive().equalsIgnoreCase("Active") ? "Active" : "Inactive");
			//
			repoParking.save(dbParking);
		}
		return "redirect:/adminlistparking";
	}  
    
    
}