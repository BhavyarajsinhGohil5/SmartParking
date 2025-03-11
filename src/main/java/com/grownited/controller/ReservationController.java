package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ParkingEntity;
//import com.grownited.entity.ParkingSlotEntity;
import com.grownited.entity.ReservationEntity;
import com.grownited.entity.UserEntity;
import com.grownited.entity.VehicleEntity;
import com.grownited.repository.ParkingRepository;
import com.grownited.repository.ReservationRepository;
import com.grownited.repository.UserRepository;
import com.grownited.repository.VehicleRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class ReservationController {
	
	@Autowired
	UserRepository repoUser;
	
	@Autowired
	VehicleRepository repoVehicle;
	
	@Autowired
	ParkingRepository repoParking;
	
	@Autowired
	ReservationRepository repoReservation; 

	@GetMapping("addreservation")
	public String addReservation(Model model) {
		
		// select * from users;
				List<UserEntity> allUser = repoUser.findAll();// all user
				model.addAttribute("allUser", allUser);
		
		// select * from vehicle;
				List<VehicleEntity> allVehicle = repoVehicle.findAll();// all vehicle
				model.addAttribute("allVehicle", allVehicle);
		
		// select * from parking;
				List<ParkingEntity> allParking = repoParking.findAll();// all parking
				model.addAttribute("allParking", allParking);
		
		return "AddReservation";
	}
	
	
	@PostMapping("savereservation")
	public String saveReservation(ReservationEntity reservation, HttpSession session) {
		
		UserEntity users =	(UserEntity)session.getAttribute("user");
		Integer userId = users.getUserId();
		reservation.setUserId(userId);
		
		VehicleEntity vehicle =	(VehicleEntity)session.getAttribute("vehicle");
		Integer vehicleId = vehicle.getVehicleId();
		reservation.setVehicleId(vehicleId);
		
		ParkingEntity parking =	(ParkingEntity)session.getAttribute("parking");
		Integer parkingId = parking.getParkingId();
		reservation.setParkingId(parkingId);
		
//		ParkingSlotEntity parkingslot =	(ParkingSlotEntity)session.getAttribute("parkingslot");
//		Integer parkingslotId = parkingslot.getParkingSlotId();
//		reservation.setParkingSlotId(parkingslotId);		
		
		System.out.println("Date: " + reservation.getDate());
		//System.out.println("Reservation" + reservation.getReservationId());
		System.out.println("Start Time: " + reservation.getStartTime());
		System.out.println("End Time: " + reservation.getEndTime());
		System.out.println("Security Amount Paid: " + reservation.getSecurityAmountPaid());
		
//		System.out.println(reservation.getParkingId());
//		System.out.println(reservation.getParkingSlotId());
//		System.out.println(reservation.getUserId());
//		System.out.println(reservation.getVehicleId());

		System.out.println("Payment Status: " + reservation.getPaymentStatus());
		System.out.println("Amount Paid: " + reservation.getAmountPaid());
		
		repoReservation.save(reservation);
		
		
		return "redirect:/addreservation";
	}
	
	@GetMapping("listreservation")
	public String listReservation(Model model) {
		List<ReservationEntity> reservationList = repoReservation.findAll();
		
		//how to send data from controller to jsp
		//Model
		model.addAttribute("reservationList", reservationList);
							//dataName , dataValue
		
		
		return "ListReservation";
	}
	
	
}
