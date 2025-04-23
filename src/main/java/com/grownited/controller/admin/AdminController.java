package com.grownited.controller.admin;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.repository.ParkingRepository;
import com.grownited.repository.ReservationRepository;
import com.grownited.repository.UserRepository;

@Controller
public class AdminController {
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	ParkingRepository repoParking;
	
	@Autowired
	ReservationRepository repoReservation;

    @GetMapping("admindashboard")
    public String adminDashboard(Model model) {
    	
    	//total users
    	//total parking
    	//this month reservation	
    	//this qtr reservation	
    	
    	//select count(*) from users;
    	Long totalUser = userRepository.count(); //total of users table
    	
    	//select * from users where role = 'USER'
//    	 Integer totalUsers = userRepository.findByRole("USER").size();
    	Integer totalUsers	= userRepository.findByRole("USER").size();
//    	Integer totalAdmin = userRepository.findByRole("ADMIN").size();
    	 
    	 Long totalParking = repoParking.count();
    	 
    	 LocalDate today = LocalDate.now();
 		 int month = today.getMonthValue();
    	 
 		Integer thisMonthReservationsCount = repoReservation.countThisMonthReservations(month);
 		Integer openParking = repoParking.findByActive("Active").size();
    	 
 		Integer monthWiseReservations [] = new Integer[12];
		
		for(int i=1;i<=12;i++) {
			monthWiseReservations [i-1] = repoReservation.countThisMonthReservations(i);
		}
    	 
    	 
    	 model.addAttribute("totalUsers", totalUsers);
    	 model.addAttribute("totalParking", totalParking);
    	 model.addAttribute("thisMonthReservationsCount", thisMonthReservationsCount);
    	 model.addAttribute("openParking", openParking);
    	 model.addAttribute("currentMonth",LocalDate.now().getMonth().name());
    	 model.addAttribute("monthWiseReservations",monthWiseReservations);
    	 
        return "AdminDashboard";
    }
	
    @GetMapping("adminmaster")
	public String adminMaster() {
		return"AdminMaster";
	}
}
