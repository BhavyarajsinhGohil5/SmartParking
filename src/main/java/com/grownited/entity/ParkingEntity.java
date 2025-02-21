package com.grownited.entity;


import jakarta.persistence.Column;

//import jakarta.persistence.Column;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "parking")
public class ParkingEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true)
    private Integer parkingId;

    @Column(nullable = false)  // Ensures this field is required
    private String title;

    @Column(nullable = false)
    private String address;

    private Integer locationId;
    private Integer ownerId;
    private Integer totalCapacity2wheeler;
    private Integer totalCapacity4wheeler;
    private Integer hourlyCharge2wheeler;
    private Integer hourlyCharge4wheeler;

    @Column(nullable = false)
    private String parkingType;

    private Double latitude;  // Changed from Integer → Double
    private Double longitude; // Changed from Integer → Double
    
    
    
	public Integer getParkingId() {
		return parkingId;
	}
	public void setParkingId(Integer parkingId) {
		this.parkingId = parkingId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getLocationId() {
		return locationId;
	}
	public void setLocationId(Integer locationId) {
		this.locationId = locationId;
	}
	public Integer getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(Integer ownerId) {
		this.ownerId = ownerId;
	}
	public Integer getTotalCapacity2wheeler() {
		return totalCapacity2wheeler;
	}
	public void setTotalCapacity2wheeler(Integer totalCapacity2wheeler) {
		this.totalCapacity2wheeler = totalCapacity2wheeler;
	}
	public Integer getTotalCapacity4wheeler() {
		return totalCapacity4wheeler;
	}
	public void setTotalCapacity4wheeler(Integer totalCapacity4wheeler) {
		this.totalCapacity4wheeler = totalCapacity4wheeler;
	}
	public Integer getHourlyCharge2wheeler() {
		return hourlyCharge2wheeler;
	}
	public void setHourlyCharge2wheeler(Integer hourlyCharge2wheeler) {
		this.hourlyCharge2wheeler = hourlyCharge2wheeler;
	}
	public Integer getHourlyCharge4wheeler() {
		return hourlyCharge4wheeler;
	}
	public void setHourlyCharge4wheeler(Integer hourlyCharge4wheeler) {
		this.hourlyCharge4wheeler = hourlyCharge4wheeler;
	}
	public String getParkingType() {
		return parkingType;
	}
	public void setParkingType(String parkingType) {
		this.parkingType = parkingType;
	}
	public Double getLatitude() {
		return latitude;
	}
	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}
	public Double getLongitude() {
		return longitude;
	}
	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}
    
    
    
}
	
	

