package com.grownited.entity;


import jakarta.persistence.Column;

//import jakarta.persistence.Column;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "parkingslot")
public class ParkingSlotEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true)
    private Integer parkingslotId;

    //private Integer parkingId;//fk
    
    @Column(unique = true)  // Ensures this field is required
    private String parkingTag;

//    @Column(nullable = false)
    private String floor;

    private Boolean active;

    private	String suvSupported;
    private Integer minParkingMinutes;
   

 
    
    
    
	public Integer getParkingSlotId() {
		return parkingslotId;
	}
	public void setParkingSlotId(Integer parkingslotId) {
		this.parkingslotId = parkingslotId;
	}
	public String getParkingTag() {
		return parkingTag;
	}
	public void setParkingTag(String parkingTag) {
		this.parkingTag = parkingTag;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
//	public Integer getLocationId() {
//		return locationId;
//	}
//	public void setLocationId(Integer locationId) {
//		this.locationId = locationId;
//	}
//	public Integer getOwnerId() {
//		return ownerId;
//	}
//	public void setOwnerId(Integer ownerId) {
//		this.ownerId = ownerId;
//	}
	
	
	public String getSuvSupported() {
		return suvSupported;
	}
	public Integer getParkingslotId() {
		return parkingslotId;
	}
	public void setParkingslotId(Integer parkingslotId) {
		this.parkingslotId = parkingslotId;
	}
	public Integer getMinParkingMinutes() {
		return minParkingMinutes;
	}
	public void setMinParkingMinutes(Integer minParkingMinutes) {
		this.minParkingMinutes = minParkingMinutes;
	}
	public void setSuvSupported(String suvSupported) {
		this.suvSupported = suvSupported;
	}
	

	

    
	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}
    
}
	
	

