package com.grownited.controller;

import java.util.List;
import java.util.Optional;

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

	@GetMapping("adminaddreservation")
	public String addReservation(Model model) {
		
		// select * from users;
				List<UserEntity> allUser = repoUser.findAll();// all user
		
		// select * from vehicle;
				List<VehicleEntity> allVehicle = repoVehicle.findAll();// all vehicle
		
		// select * from parking;
				List<ParkingEntity> allParking = repoParking.findAll();// all parking
				
				
				model.addAttribute("reservation", new ReservationEntity());
				model.addAttribute("allUser", allUser);
				model.addAttribute("allVehicle", allVehicle);
				model.addAttribute("allParking", allParking);
		
		return "AddReservation";
	}
	
	
	@PostMapping("savereservation")
	public String saveReservation(ReservationEntity ReservationEntity, HttpSession session) {
		
		UserEntity user =	(UserEntity)session.getAttribute("user");
		Integer userId = ReservationEntity.getUserId();
		ReservationEntity.setUserId(userId);
//		Integer userId = user.getUserId();
//		reservation.setUserId(userId);
		
		VehicleEntity vehicle =	(VehicleEntity)session.getAttribute("vehicle");
		Integer vehicleId = ReservationEntity.getVehicleId();
		ReservationEntity.setVehicleId(vehicleId);
//		Integer vehicleId = vehicle.getVehicleId();
//		reservation.setVehicleId(vehicleId);
		
		ParkingEntity parking =	(ParkingEntity)session.getAttribute("parking");
		Integer parkingId = ReservationEntity.getParkingId();
		ReservationEntity.setParkingId(parkingId);
//		Integer parkingId = parking.getParkingId();
//		reservation.setParkingId(parkingId);
		
//		ParkingSlotEntity parkingslot =	(ParkingSlotEntity)session.getAttribute("parkingslot");
//		Integer parkingslotId = parkingslot.getParkingSlotId();
//		reservation.setParkingSlotId(parkingslotId);		
		
		//System.out.println("Date: " + reservation.getDate());
		//System.out.println("Reservation" + reservation.getReservationId());
		//System.out.println("Start Time: " + reservation.getStartTime());
		//System.out.println("End Time: " + reservation.getEndTime());
		//System.out.println("Security Amount Paid: " + reservation.getSecurityAmountPaid());
		
//		System.out.println(reservation.getParkingId());
//		System.out.println(reservation.getParkingSlotId());
//		System.out.println(reservation.getUserId());
//		System.out.println(reservation.getVehicleId());

		//System.out.println("Payment Status: " + reservation.getPaymentStatus());
		//System.out.println("Amount Paid: " + reservation.getAmountPaid());
		
		repoReservation.save(ReservationEntity);
		
		
		return "redirect:/adminaddreservation";
	}
	
	@GetMapping("adminlistreservation")
	public String listReservation(Model model) {
		List<Object[]> listReservation = repoReservation.getAll();
		
		//how to send data from controller to jsp
		//Model
		model.addAttribute("allReservation", listReservation);
							//dataName , dataValue
		
		
		return "ListReservation";
	}
	
	@GetMapping("adminviewreservation")
	public String viewReservation(Integer reservationId, Model model) {
		List<Object[]> op = repoReservation.getByReservationId(reservationId);
		model.addAttribute("reservation", op);
		return "ViewReservation";
	}
	
	@GetMapping("admindeletereservation")
	public String deleteReservation(Integer reservationId) {
		repoReservation.deleteById(reservationId);
		return"redirect:/adminlistreservation";
	}
	
	@GetMapping("admineditreservation")
	public String editReservation(Integer reservationId,Model model) {
		Optional<ReservationEntity> op = repoReservation.findById(reservationId);
		if (!op.isPresent()) {
			return "redirect:/adminlistreservation";
		} else {
			model.addAttribute("reservation",op.get());
			return "EditReservation";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("adminupdatereservation")
	public String updateReservation(ReservationEntity reservation) {//pcode vhreg type vid 
		
		System.out.println(reservation.getReservationId());//id? db? 

		Optional<ReservationEntity> op = repoReservation.findById(reservation.getReservationId());
		
		if(op.isPresent())
		{
			ReservationEntity dbReservation = op.get(); //pcode vhreg type id userId 
			//dbVehicle.setParkingCode(vehicleEntity.getParkingCode());//code 
			dbReservation.setDate(reservation.getDate());//type 
			dbReservation.setStartTime(reservation.getStartTime());//type 
			dbReservation.setEndTime(reservation.getEndTime());//type 
			dbReservation.setPaymentStatus(reservation.getPaymentStatus());//type 
			dbReservation.setAmountPaid(reservation.getAmountPaid());//type 
			dbReservation.setSecurityAmountPaid(reservation.getSecurityAmountPaid());//type 
		
			repoReservation.save(dbReservation);
		}
		return "redirect:/adminlistreservation";
}
}