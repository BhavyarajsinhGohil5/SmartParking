package com.grownited.entity;




import jakarta.persistence.Column;
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
	 @Column(unique = true)
	 private Integer reservationId;  //PK
//	 private Integer parkingSlotId;  //FK
	 private LocalDate date;
	 private LocalTime startTime;
	 private LocalTime endTime;
	 private String paymentStatus;
	 private Double amountPaid;
	 private Double securityAmountPaid;
	 
	 private Integer userId;  //FK
	 private Integer parkingId;  //FK
	 private Integer vehicleId;  //FK
	 
	
	public Integer getReservationId() {
		return reservationId;
	}
	public void setReservationId(Integer reservationId) {
		this.reservationId = reservationId;
	}

//	public Integer getParkingSlotId() {
//		return parkingSlotId;
//	}
//	public void setParkingSlotId(Integer parkingSlotId) {
//		this.parkingSlotId = parkingSlotId;
//	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
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
		
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	 
	public Integer getVehicleId() {
		return vehicleId;
	}
	public void setVehicleId(Integer vehicleId) {
		this.vehicleId = vehicleId;
	}
	 
	public Integer getParkingId() {
		return parkingId;
	}
	public void setParkingId(Integer parkingId) {
		this.parkingId = parkingId;
	}
	
}
