package com.grownited.controller;

import java.time.LocalTime;
import java.time.temporal.ChronoUnit;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

import com.grownited.entity.LocationEntity;
import com.grownited.entity.ParkingEntity;
import com.grownited.entity.UserEntity;
import com.grownited.entity.VehicleEntity;
import com.grownited.entity.ReservationEntity;

import com.grownited.repository.LocationRepository;
import com.grownited.repository.ParkingRepository;
import com.grownited.repository.ReservationRepository;
import com.grownited.repository.UserRepository;
import com.grownited.repository.VehicleRepository;
import com.grownited.service.MailService;
import com.grownited.service.PaymentService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	
	


	@Autowired
	PaymentService paymentService;
	
	@Autowired
	LocationRepository repoLocation;
	
	@Autowired
	UserRepository repoUser;
	
	@Autowired
	VehicleRepository repoVehicle;
	
    @Autowired
    ParkingRepository repoParking;

	@Autowired
	ReservationRepository repoReservation; 
    
	@GetMapping("home")
	public String home() {
		return "Home";
	}
	
	
	@GetMapping("faqs") 
	public String faqs() { 
		return "FAQs"; 
	}
	 
	@GetMapping("about") 
	public String about() { 
		return "AboutUs"; 
	}
	
	@GetMapping("websitebody")
	public String websiteBody() {
		return "WebsiteBody";
	}
	
	@GetMapping("searchparking")
	public String searchParking(Model model) {
		
		
		// select * from location;
		List<LocationEntity> allLocation = repoLocation.findAll();// all location


		// select * from parking;
		List<ParkingEntity> allParking = repoParking.findAll();// all user

		
		model.addAttribute("allLocation", allLocation);
		model.addAttribute("allParking", allParking);

		return "SearchParking";
	}
	
	@GetMapping("savesearchparking")
	public String saveSearchParking(Integer parkingId, Model model) {
		List<Object[]> op = repoParking.getByParkingId(parkingId);
		
		model.addAttribute("parking", op);
		
		return "ShowParking";
	}
	
	
	@GetMapping("showparking")
	public String showParking(Integer reservationId,Model model) {
		
		 // Retrieve the reservation details
	    ReservationEntity reservation = repoReservation.findById(reservationId).orElse(null);

	    // Add the reservation details to the model
	    model.addAttribute("reservation", reservation);
	    
	    
		// select * from location;
		List<UserEntity> allUser = repoUser.findAll();// all location
		model.addAttribute("alluser", allUser);
//		
//		List<ParkingEntity> allParking = repoParking.findAll();
//		model.addAttribute("allParking", allParking);
//		
		List<Object[]> op = repoReservation.getByReservationId(reservationId);
		model.addAttribute("reservation", op);
		
		return "ShowParking";
	}
	
	@GetMapping("useraddvehicle")
	public String userAddVehicle(Model model) {
		
		// select * from users;
		List<UserEntity> allUser = repoUser.findAll();// all user

		model.addAttribute("vehicle", new VehicleEntity());
		model.addAttribute("allUser", allUser);
		
		
		
		return "UserAddVehicle";
	}
	
	
	@PostMapping("saveuservehicle")
	public String saveUserVehicle(VehicleEntity VehicleEntity, HttpSession session) {
		
//	UserEntity user =	(UserEntity)session.getAttribute("user");
//	Integer userId = VehicleEntity.getUserId();
//	VehicleEntity.setUserId(userId);
	
//	Integer userId = user.getUserId();
//	vehicle.setUserId(userId);
		 // Assuming userId is passed from the form as a hidden field
	    Integer userId = VehicleEntity.getUserId();

	    // Set the userId to the vehicleEntity
	    VehicleEntity.setUserId(userId);
		System.out.println(VehicleEntity.getVehicleId());
//		
		System.out.println(VehicleEntity.getVehicleRegNo());
		System.out.println(VehicleEntity.getVehicleType());
//		repoVehicle.save(vehicle);
	repoVehicle.save(VehicleEntity);
		
	return "UserAddReservation";
//	return "redirect:/useraddreservation";
//		return "redirect:/useraddvehicle";
	}
	
	@GetMapping("useraddreservation")
	public String userAddReservation(Model model, HttpSession session) {
		
	    // Assuming userId is stored in the session
	    UserEntity user = (UserEntity) session.getAttribute("user");
	    Integer userId = user.getUserId();
		
		
		
		
		// select * from users;
				List<UserEntity> allUser = repoUser.findAll();// all user
		
		// select * from vehicle;
//				List<VehicleEntity> allVehicle = repoVehicle.findAll();// all vehicle

				// Fetch vehicles by userId
			    List<VehicleEntity> userVehicles = repoVehicle.findByUserId(userId);
				
		// select * from parking;
				List<ParkingEntity> allParking = repoParking.findAll();// all parking
				
				
				model.addAttribute("reservation", new ReservationEntity());
				model.addAttribute("allUser", allUser);
//				model.addAttribute("allVehicle", allVehicle);
				model.addAttribute("userVehicles", userVehicles);
				model.addAttribute("allParking", allParking);
				
				if (!userVehicles.isEmpty()) {
				    VehicleEntity vehicle = userVehicles.get(0);
				    model.addAttribute("vehicle", vehicle);
				    
				    // You can also add default hourly charge to pre-populate if needed
				    ParkingEntity defaultParking = allParking.get(0);
				    String vehicleType = vehicle.getVehicleType();
				    
				    double defaultHourlyCharge = 0.0;
				    if ("2Wheeler".equalsIgnoreCase(vehicleType)) {
				        defaultHourlyCharge = defaultParking.getHourlyCharge2wheeler();
				    } else if ("4Wheeler".equalsIgnoreCase(vehicleType)) {
				        defaultHourlyCharge = defaultParking.getHourlyCharge4wheeler();
				    } else if ("SUV".equalsIgnoreCase(vehicleType)) {
				        defaultHourlyCharge = defaultParking.getHourlyCharge4wheeler();
				    }
				    
				    model.addAttribute("defaultHourlyCharge", defaultHourlyCharge);
	}
				return "UserAddReservation";
				}
	
	
	@PostMapping("saveuserreservation")
	public String saveUserReservation(ReservationEntity ReservationEntity, HttpSession session) {
		
//		UserEntity user =	(UserEntity)session.getAttribute("user");
		Integer userId = ReservationEntity.getUserId();
		
		
		
		
//		
		VehicleEntity vehicle =	(VehicleEntity)session.getAttribute("vehicle");
		Integer vehicleId = ReservationEntity.getVehicleId();
		ReservationEntity.setVehicleId(vehicleId);

		ParkingEntity parking =	(ParkingEntity)session.getAttribute("parking");
		Integer parkingId = ReservationEntity.getParkingId();
		ReservationEntity.setParkingId(parkingId);
		
	    // Fetch vehicle, parking from DB
	    Optional<VehicleEntity> optionalVehicle = repoVehicle.findById(ReservationEntity.getVehicleId());
	    Optional<ParkingEntity> optionalParking = repoParking.findById(ReservationEntity.getParkingId());

	    if (optionalVehicle.isPresent() && optionalParking.isPresent()) {
	        VehicleEntity vehicles = optionalVehicle.get();
	        ParkingEntity parkings = optionalParking.get();

	        // Duration calculation (in hours)
	        LocalTime start = ReservationEntity.getStartTime();
	        LocalTime end = ReservationEntity.getEndTime();
	        long duration = ChronoUnit.HOURS.between(start, end);
	        if (duration <= 0) {
	            duration += 24; // handles overnight reservations
	        }

	        // Hourly rate based on vehicle type
	        double hourlyRate = 0.0;
	       // double security = 0.0;
	        String type = vehicles.getVehicleType();

	        if ("2Wheeler".equalsIgnoreCase(type)) {
	            hourlyRate = parkings.getHourlyCharge2wheeler();
	            //security = 100;
	        } else if ("4Wheeler".equalsIgnoreCase(type)) {
	            hourlyRate = parkings.getHourlyCharge4wheeler();
	           // security = 200;
	        } else if ("SUV".equalsIgnoreCase(type)) {
	            hourlyRate = parkings.getHourlyCharge4wheeler();
	            //security = 200;
	        }

	        // Set calculated values
	        double totalAmount = hourlyRate * duration;
	        ReservationEntity.setAmountPaid(totalAmount);
	       // ReservationEntity.setSecurityAmountPaid(security);
	    } else {
	        // Optional: handle missing vehicle or parking
	        System.out.println("Vehicle or Parking not found!");
	        return "redirect:/useraddreservation?error=true";
	    }
		
		ReservationEntity.setUserId(userId);
//		
//		Integer userId = user.getUserId();
//		reservation.setUserId(userId);
//		
		
//		Integer vehicleId = vehicle.getVehicleId();
//		reservation.setVehicleId(vehicleId);
		
//		ParkingEntity parking =	(ParkingEntity)session.getAttribute("parking");
		
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
//		
//		System.out.println(ReservationEntity.getReservationId());
//		System.out.println(ReservationEntity.getDate());
//		System.out.println(ReservationEntity.getStartTime());
//		System.out.println(ReservationEntity.getEndTime());

		//System.out.println("Payment Status: " + reservation.getPaymentStatus());
		//System.out.println("Amount Paid: " + reservation.getAmountPaid());
		
		repoReservation.save(ReservationEntity);
		
//		return "UserAddReservation";
		return "redirect:/useraddreservation";
	}
	
	
	
	
	@GetMapping("bookhere")
	public String bookHere(Model model) {
		// select * from location;
				List<LocationEntity> allLocation = repoLocation.findAll();// all location


				// select * from parking;
				List<ParkingEntity> allParking = repoParking.findAll();// all user

				
				//model.addAttribute("searchparking", new ParkingEntity());
				model.addAttribute("allLocation", allLocation);
				model.addAttribute("allParking", allParking);
		
		return "BookHere";
	}
	
	
	
	@GetMapping("shopingcart")
	public String shopingCart(Integer reservationId,Model model) {
		/*
		 * UserEntity user = (UserEntity) session.getAttribute("user"); Integer userId =
		 * user.getUserId();
		 * 
		 * CartEntity cart = new CartEntity(); cart.setProductId(productId);
		 * cart.setUserId(userId); cart.setQuantity(1);
		 * 
		 * repositoryCart.save(cart);
		 */
		List<Object[]> op = repoReservation.getByReservationId(reservationId);
		model.addAttribute("reservation", op);
		
		return "ShopingCart";
	}
	
//	@GetMapping("mybookings")
//	public String viewUserBookings(Integer reservationId,Model model) {
//		List<Object[]> op = repoReservation.getByReservationId(reservationId);
//		
//		//how to send data from controller to jsp
//		//Model
//		model.addAttribute("reservation", op);
//							//dataName , dataValue
//		
//		
//		return "UserViewBookings";
//	}
	@GetMapping("mybookings")
	public String viewUserBookings(HttpSession session, Model model) {
	    // Get the logged-in user from session
	    UserEntity user = (UserEntity) session.getAttribute("user");

	    if (user == null) {
	        return "redirect:/login"; // or handle appropriately
	    }

	    Integer userId = user.getUserId();

	    // Fetch bookings of this user
	    List<Object[]> userReservations = repoReservation.getAllByUserId(userId);

	    model.addAttribute("reservation", userReservations);

//	    List<Object[]> userLocations = repoLocation.getByLocationId(userId);
//
//	    model.addAttribute("location", userLocations);
//	    
	    return "UserViewBookings";
	}
	

	@GetMapping("checkout")
	public String checkout(Integer reservationId, Model model, HttpSession session) {
		
		if (reservationId == null) {
			 UserEntity user = (UserEntity) session.getAttribute("user");
		        
		        // Retrieve the user's last reservation (you can change this logic based on how you link users and reservations)
		        Optional<ReservationEntity> lastReservation = repoReservation.findFirstByUserIdOrderByDateDesc(user.getUserId());
		        
		        if (!lastReservation.isPresent()) {
		            return "redirect:/home";  // Redirect if no reservation exists
		        }

		        reservationId = lastReservation.get().getReservationId(); 
	        
	    }
		
//		UserEntity user = (UserEntity) session.getAttribute("users");
		
//		model.addAttribute("amount", 500);
		
		 Optional<ReservationEntity> op = repoReservation.findById(reservationId);
	        if (!op.isPresent()) {
	            return "redirect:/home";
	        }

	        ReservationEntity reservation = op.get();
	        
	        Double amountPaid = reservation.getAmountPaid() != null ? reservation.getAmountPaid() : 0.0;
	        Double securityAmount = reservation.getSecurityAmountPaid() != null ? reservation.getSecurityAmountPaid() : 0.0;
	        Double amount = amountPaid + securityAmount;

	        
	        
	        model.addAttribute("amount", amount);
	        model.addAttribute("reservationId", reservationId);
		
		return "Checkout";
	}
	
	@PostMapping("pay")
	public String pay(String ccNum, String expDate, Integer reservationId,HttpSession session) {

//		UserEntity user = (UserEntity) session.getAttribute("user");

		 if (reservationId == null) {
			 UserEntity user = (UserEntity) session.getAttribute("user");

		        // Retrieve the user's last reservation (change logic if necessary)
		        Optional<ReservationEntity> lastReservation = repoReservation.findFirstByUserIdOrderByDateDesc(user.getUserId());

		        if (!lastReservation.isPresent()) {
		            return "redirect:/home";  // Redirect if no reservation exists
		        }

		        reservationId = lastReservation.get().getReservationId();  // Get reservationId from the user's last reservation
		    }
//		paymentService.chargeCreditCard("bizdev05", "4kJd237rZu59qAZd", 500.0, ccNum,
//				expDate, "jackreacher@yopmail.com");
//		paymentService.chargeCreditCard("22UmU47bLLM", "8Hg2g7W677KasR25", amount * 1.0, ccNum,
//				expDate, user.getEmail(), user.getUserId());
//	 
		
		  Optional<ReservationEntity> op = repoReservation.findById(reservationId);
	        if (!op.isPresent()) {
	            return "redirect:/home";
	        }

	        ReservationEntity reservation = op.get();
	        UserEntity user = (UserEntity) session.getAttribute("user");

	        
	        Double amountPaid = reservation.getAmountPaid() != null ? reservation.getAmountPaid() : 0.0;
	        Double securityAmount = reservation.getSecurityAmountPaid() != null ? reservation.getSecurityAmountPaid() : 0.0;
	        Double amount = amountPaid + securityAmount;
		
	        Integer paymentId = paymentService.chargeCreditCard("8Rq64Gg3PcQ4", "4CV9Rc5chM2p8v7L", amount, ccNum,
				expDate, user.getEmail(),
                user.getUserId());
//		if (paymentId == -1) {
//			return "redirect:/checkout";
//		}
//		cartRepo.deleteAll(userId); 

        if (paymentId == -1) {
            return "redirect:/checkout?reservationId=" + reservationId;
        }

        reservation.setPaymentStatus("Completed");
        repoReservation.save(reservation);

		return "redirect:/home";
	}
	
    @Autowired
    private MailService mailService;
	
	@GetMapping("contactus")
    public String contactPage() {
        return "Contact"; // This loads Contact.jsp
    }

    @PostMapping("sendcontact")
    public String submitContactForm(@RequestParam("email") String email,
                                    @RequestParam("msg") String message,
                                    Model model) {
        boolean isSent = mailService.sendContactMail(email, message);

        if (isSent) {
            model.addAttribute("success", "Your message has been sent successfully.");
        } else {
            model.addAttribute("error", "Failed to send your message. Please try again later.");
        }

        return "Contact";
    }
}
