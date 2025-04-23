package com.grownited.dto;

public class ParkingDto {

	
	private Integer parkingId;
	private String title;
	private Integer locationId;
	private String locationName;
	private Integer ownerId;
    private Integer totalCapacity2wheeler;
    private Integer totalCapacity4wheeler;
    private Double hourlyCharge2wheeler;
    private Double hourlyCharge4wheeler;
    private String parkingType;

    private Double latitude;  // Changed from Integer → Double
    private Double longitude;
    
    
    
    
    
    
    
	public ParkingDto(Integer parkingId, String title, Integer locationId,String locationName, Integer ownerId, 
			Integer totalCapacity2wheeler, Integer totalCapacity4wheeler, Double hourlyCharge2wheeler,
			Double hourlyCharge4wheeler, String parkingType, Double latitude, Double longitude) {
		super();
		this.parkingId = parkingId;
		this.title = title;
		
		this.locationId = locationId;
		
		this.locationName = locationName;
		this.ownerId = ownerId;
		this.totalCapacity2wheeler = totalCapacity2wheeler;
		this.totalCapacity4wheeler = totalCapacity4wheeler;
		this.hourlyCharge2wheeler = hourlyCharge2wheeler;
		this.hourlyCharge4wheeler = hourlyCharge4wheeler;
		this.parkingType = parkingType;
		this.latitude = latitude;
		this.longitude = longitude;
	}
	
	
	
	public String getLocationName() {
		return locationName;
	}



	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}



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
	public Double getHourlyCharge2wheeler() {
		return hourlyCharge2wheeler;
	}
	public void setHourlyCharge2wheeler(Double hourlyCharge2wheeler) {
		this.hourlyCharge2wheeler = hourlyCharge2wheeler;
	}
	public Double getHourlyCharge4wheeler() {
		return hourlyCharge4wheeler;
	}
	public void setHourlyCharge4wheeler(Double hourlyCharge4wheeler) {
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
