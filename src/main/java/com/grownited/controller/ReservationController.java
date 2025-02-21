package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


import com.grownited.entity.ReservationEntity;
import com.grownited.repository.ReservationRepository;

@Controller
public class ReservationController {
	
	
	@Autowired
	ReservationRepository repoReservation; 

	@GetMapping("addreservation")
	public String addReservation() {
		return "AddReservation";
	}
	
	
	@PostMapping("savereservation")
	public String saveReservation(ReservationEntity reservation) {
		
		System.out.println(reservation.getDate());
		System.out.println(reservation.getReservationId());
		System.out.println(reservation.getStartTime());
		System.out.println(reservation.getEndTime());
		System.out.println(reservation.getSecurityAmountPaid());
		
		System.out.println(reservation.getParkingId());
		System.out.println(reservation.getParkingSlotId());
		System.out.println(reservation.getUserId());
		System.out.println(reservation.getVehicleId());

		System.out.println(reservation.getPaymentStatus());
		System.out.println(reservation.getAmountPaid());
		repoReservation.save(reservation);
		
		
		return "redirect:/listreservation";
	}
	
	@GetMapping("listreservation")
	public String listreservation(Model model) {
		List<ReservationEntity> reservationList = repoReservation.findAll();
		
		//how to send data from controller to jsp
		//Model
		model.addAttribute("reservationList", reservationList);
							//dataName , dataValue
		
		
		return "ListReservation";
	}
	
	
}
