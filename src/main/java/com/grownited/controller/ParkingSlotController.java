package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


import com.grownited.entity.ParkingSlotEntity;
import com.grownited.repository.ParkingSlotRepository;

@Controller
public class ParkingSlotController {

    @Autowired
    ParkingSlotRepository repoParkingSlot;

    @GetMapping("addparkingslot")
    public String addParkingSlot() {
        return "AddParkingSlot";
    }

    @PostMapping("saveparkingslot")
    public String saveParkingSlot(ParkingSlotEntity parkingslot) {
        
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
    	System.out.println("Floor: " + parkingslot.getFloor());
    	System.out.println("MinParkingMinutes: " + parkingslot.getMinParkingMinutes());
    	
    	System.out.println("SuvSupported: " + parkingslot.getSuvSupported());
    	
    	
            // Save entity to the database (just once)
            repoParkingSlot.save(parkingslot);
//
//            //System.out.println("Parking details saved successfully.");
//        
//        //catch (Exception e) {
////            System.err.println("Error saving parking details: " + e.getMessage());
////            e.printStackTrace();
////            return "ErrorPage"; // Handle the error properly
////        }

        return "redirect:/listparkingslot"; // Return the same page or redirect to a success page
    }
    
    @GetMapping("listparkingslot")
	public String listParkingSlot(Model model) {
		List<ParkingSlotEntity> parkingslotList = repoParkingSlot.findAll();
		
		//how to send data from controller to jsp
		//Model
		model.addAttribute("parkingslotList", parkingslotList);
							//dataName , dataValue
		
		
		return "ListParkingSlot";
	}
    
    
    @GetMapping("viewparkingslot")
	public String viewParkingSlot(Integer parkingslotId,Model model) {
		
		
		System.out.println("id ===>" + parkingslotId);
		Optional<ParkingSlotEntity> op = repoParkingSlot.findById(parkingslotId);
		if(op.isEmpty()) {
			//not found
		}else {
			 //data found
			ParkingSlotEntity parkingslot =  op.get();
			//send data to jsp -->
			model.addAttribute("parkingslot",parkingslot);
		}
		
		
		return "ViewParkingSlot";
	}
	
	@GetMapping("deleteparkingslot")
	public String deleteParkingSlot(Integer parkingslotId) {
		repoParkingSlot.deleteById(parkingslotId);
		return"redirect:/listparkingslot";
	}
    
    
    
    
    
}