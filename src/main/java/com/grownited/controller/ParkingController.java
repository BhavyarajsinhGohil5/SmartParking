package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ParkingEntity;
import com.grownited.repository.ParkingRepository;

@Controller
public class ParkingController {

    @Autowired
    ParkingRepository repoParking;

    @GetMapping("addparking")
    public String addParking() {
        return "AddParking";
    }

    @PostMapping("saveparking")
    public String saveParking(ParkingEntity parking) {
        
            // Log all parking entity fields
            System.out.println(parking.getParkingId());
            System.out.println(parking.getAddress());
            System.out.println(parking.getTitle());
            System.out.println(parking.getParkingType());
            System.out.println(parking.getOwnerId());
            System.out.println(parking.getLocationId());
            System.out.println(parking.getHourlyCharge2wheeler());
            System.out.println(parking.getHourlyCharge4wheeler());
            System.out.println(parking.getTotalCapacity2wheeler());
            System.out.println(parking.getTotalCapacity4wheeler());
            System.out.println(parking.getLatitude());
            System.out.println(parking.getLongitude());

            // Save entity to the database (just once)
            repoParking.save(parking);

            //System.out.println("Parking details saved successfully.");
        
        //catch (Exception e) {
//            System.err.println("Error saving parking details: " + e.getMessage());
//            e.printStackTrace();
//            return "ErrorPage"; // Handle the error properly
//        }

        return "AddParking"; // Return the same page or redirect to a success page
    }
}