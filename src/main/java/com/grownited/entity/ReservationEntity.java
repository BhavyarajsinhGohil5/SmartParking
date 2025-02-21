package com.grownited.entity;




import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.time.LocalDate;
import java.time.LocalTime;

@Entity
@Table(name="reservation")
public class ReservationEntity {
	
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Long reservationId;  //PK
	 private Long userId;  //FK
	 private Long parkingSlotId;  //FK
	 private Long parkingId;  //FK
	 private LocalDate date;
	 private Long vehicleId;  //FK
	 private LocalTime startTime;
	 private LocalTime endTime;
	 private String paymentStatus;
	 private Double amountPaid;
	 private Double securityAmountPaid;
	 
	 
	public Long getReservationId() {
		return reservationId;
	}
	public void setReservationId(Long reservationId) {
		this.reservationId = reservationId;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Long getParkingSlotId() {
		return parkingSlotId;
	}
	public void setParkingSlotId(Long parkingSlotId) {
		this.parkingSlotId = parkingSlotId;
	}
	public Long getParkingId() {
		return parkingId;
	}
	public void setParkingId(Long parkingId) {
		this.parkingId = parkingId;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	public Long getVehicleId() {
		return vehicleId;
	}
	public void setVehicleId(Long vehicleId) {
		this.vehicleId = vehicleId;
	}
	public LocalTime getStartTime() {
		return startTime;
	}
	public void setStartTime(LocalTime startTime) {
		this.startTime = startTime;
	}
	public LocalTime getEndTime() {
		return endTime;
	}
	public void setEndTime(LocalTime endTime) {
		this.endTime = endTime;
	}
	public String getPaymentStatus() {
		return paymentStatus;
	}
	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}
	public Double getAmountPaid() {
		return amountPaid;
	}
	public void setAmountPaid(Double amountPaid) {
		this.amountPaid = amountPaid;
	}
	public Double getSecurityAmountPaid() {
		return securityAmountPaid;
	}
	public void setSecurityAmountPaid(Double securityAmountPaid) {
		this.securityAmountPaid = securityAmountPaid;
	}   
		
	 
	 
	 
}
