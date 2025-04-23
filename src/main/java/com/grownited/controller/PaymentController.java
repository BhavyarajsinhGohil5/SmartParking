package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import jakarta.servlet.http.HttpSession;

import com.grownited.entity.ReservationEntity;
import com.grownited.entity.UserEntity;
import com.grownited.entity.PaymentEntity;
import com.grownited.repository.PaymentRepository;
import com.grownited.repository.ReservationRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.PaymentService;

@Controller
public class PaymentController {

	@Autowired
	UserRepository repoUser;
	
	@Autowired
	PaymentService paymentService;

    @Autowired
    ReservationRepository reservationRepository;
	
	@Autowired
	PaymentRepository repoPayment; 
	
	/*
	 * @GetMapping("checkout") public String checkout(Integer reservationId, Model
	 * model, HttpSession session) {
	 * 
	 * // UserEntity user = (UserEntity) session.getAttribute("users");
	 * 
	 * // model.addAttribute("amount", 500);
	 * 
	 * Optional<ReservationEntity> op =
	 * reservationRepository.findById(reservationId); if (!op.isPresent()) { return
	 * "redirect:/home"; }
	 * 
	 * ReservationEntity reservation = op.get(); model.addAttribute("amount",
	 * reservation.getAmountPaid()); model.addAttribute("reservationId",
	 * reservationId);
	 * 
	 * return "Checkout"; }
	 * 
	 * @PostMapping("pay") public String pay(String ccNum, String expDate, Integer
	 * reservationId,HttpSession session) {
	 * 
	 * // UserEntity users = (UserEntity) session.getAttribute("user");
	 * 
	 * 
	 * // paymentService.chargeCreditCard("bizdev05", "4kJd237rZu59qAZd", 500.0,
	 * ccNum, // expDate, "jackreacher@yopmail.com"); //
	 * paymentService.chargeCreditCard("22UmU47bLLM", "8Hg2g7W677KasR25", amount *
	 * 1.0, ccNum, // expDate, user.getEmail(), user.getUserId()); //
	 * 
	 * Optional<ReservationEntity> op =
	 * reservationRepository.findById(reservationId); if (!op.isPresent()) { return
	 * "redirect:/home"; }
	 * 
	 * ReservationEntity reservation = op.get(); UserEntity user = (UserEntity)
	 * session.getAttribute("user");
	 * 
	 * Double amount = reservation.getAmountPaid();
	 * 
	 * Integer paymentId = paymentService.chargeCreditCard("8Rq64Gg3PcQ4",
	 * "4CV9Rc5chM2p8v7L", amount, ccNum, expDate, user.getEmail(),
	 * user.getUserId()); // if (paymentId == -1) { // return "redirect:/checkout";
	 * // } // cartRepo.deleteAll(userId);
	 * 
	 * if (paymentId == -1) { return "redirect:/checkout?reservationId=" +
	 * reservationId; }
	 * 
	 * reservation.setPaymentStatus("Completed");
	 * reservationRepository.save(reservation);
	 * 
	 * return "redirect:/home"; }
	 */
	@GetMapping("admincheckout")
	public String adminCheckout(Integer reservationId, Model model) {


	    List<UserEntity> allUser = repoUser.findAll();
	    model.addAttribute("allUser", allUser);

	    if (reservationId != null) {
	        Optional<ReservationEntity> op = reservationRepository.findById(reservationId);
	        if (op.isPresent()) {
	            ReservationEntity reservation = op.get();
	            Double amountPaid = reservation.getAmountPaid() != null ? reservation.getAmountPaid() : 0.0;
	            Double securityAmount = reservation.getSecurityAmountPaid() != null ? reservation.getSecurityAmountPaid() : 0.0;
	            Double amount = amountPaid + securityAmount;

	            model.addAttribute("amount", amount);
	            model.addAttribute("reservationId", reservationId);
	            model.addAttribute("reservation", reservation); // Optional
	        }
	    }

	    return "AdminCheckout";
	}
	
	@PostMapping("adminpay")
	public String adminPay(String ccNum, String expDate, Integer reservationId, Integer userId, HttpSession session, Model model) {
	    

	    // If reservationId is not provided, get the latest reservation for the selected user
	    if (reservationId == null && userId != null) {
	        Optional<ReservationEntity> lastReservation = reservationRepository.findFirstByUserIdOrderByDateDesc(userId);

	        if (!lastReservation.isPresent()) {
	            return "redirect:/admincheckout";  // No reservation found
	        }

	        reservationId = lastReservation.get().getReservationId();
	    }

	    Optional<ReservationEntity> op = reservationRepository.findById(reservationId);
	    if (!op.isPresent()) {
	        return "redirect:/admincheckout";
	    }

	    ReservationEntity reservation = op.get();
	 // If userId is still not provided, fallback to reservation.userId
	    if (userId == null) {
	        userId = reservation.getUserId();
	    }

	    // Fetch the user from UserRepository
	    Optional<UserEntity> userOpt = repoUser.findById(userId);
	    if (!userOpt.isPresent()) {
	        return "redirect:/admincheckout";
	    }

	    UserEntity user = userOpt.get();


	    // Calculate amount
	    Double amountPaid = reservation.getAmountPaid() != null ? reservation.getAmountPaid() : 0.0;
	    Double securityAmount = reservation.getSecurityAmountPaid() != null ? reservation.getSecurityAmountPaid() : 0.0;
	    Double amount = amountPaid + securityAmount;

	    // Call payment service
	    Integer paymentId = paymentService.chargeCreditCard(
	        "8Rq64Gg3PcQ4", "4CV9Rc5chM2p8v7L", amount, ccNum, expDate,
	        user.getEmail(), user.getUserId());

	    if (paymentId == -1) {
	        return "redirect:/admincheckout?reservationId=" + reservationId;
	    }

	    // Update reservation status
	    reservation.setPaymentStatus("Completed");
	    reservationRepository.save(reservation);

	    return "redirect:/admincheckout"; // optionally redirect to payment list after success
	}
	@GetMapping("adminlistpayment")
	public String listPayment(Model model) {
		List<Object[]> listPayment = repoPayment.getAll();
		
		//how to send data from controller to jsp
		//Model
		model.addAttribute("allPayment", listPayment);
							//dataName , dataValue
		
		
		return "ListPayment";
	}
	
	@GetMapping("adminviewpayment")
	public String viewPayment(Integer paymentId, Model model) {
		List<Object[]> op = repoPayment.getByPaymentId(paymentId);
		model.addAttribute("payment", op);
		return "ViewPayment";
	}
	
//	@GetMapping("deletereservation")
//	public String deletePayment(Integer paymentId) {
//		repoPayment.deleteById(paymentId);
//		return"redirect:/listpayment";
//	}
}
	
	
	
	
	
	
