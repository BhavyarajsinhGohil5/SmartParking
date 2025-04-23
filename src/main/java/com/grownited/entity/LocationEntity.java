package com.grownited.entity;


//
//import java.util.Date;
//
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="location")
public class LocationEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer locationId;
	
	@Column(nullable = false)
	private String locationName;
	//private String lastName;
	
//	@Column(unique = true)
//	private	String email;
//	private	String password;
//	private	String confirmpassword;
//	private	String contactNum;
//	private String role;
//	private	String city;
//	private	String gender;
//	private Date createdAt;
//	private Boolean active;
	
	
	public Integer getLocationId() {
		return locationId;
	}
	
	public void setLocationId(Integer locationId) {
		this.locationId = locationId;
	}
	
	public String getLocationName() {
		return locationName;
	}
	
	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}
	
//	
//	public String getLastName() {
//		return lastName;
//	}
//	
//	public void setLastName(String lastName) {
//		this.lastName = lastName;
//	}
//	
//	public String getEmail() {
//		return email;
//	}
//	
//	public void setEmail(String email) {
//		this.email = email;
//	}
//	
//	public String getPassword() {
//		return password;
//	}
//	
//	public void setPassword(String password) {
//		this.password = password;
//	}
//	
//	
//	
//	
//	
//	public String getConfirmpassword() {
//		return confirmpassword;
//	}
//
//	public void setConfirmpassword(String confirmpassword) {
//		this.confirmpassword = confirmpassword;
//	}
//
//	public String getContactNum() {
//		return contactNum;
//	}
//	
//	public void setContactNum(String contactNum) {
//		this.contactNum = contactNum;
//	}
//	
//	
//	
//	public String getRole() {
//		return role;
//	}
//
//	public void setRole(String role) {
//		this.role = role;
//	}
//
//	public String getCity() {
//		return city;
//	}
//	
//	public void setCity(String city) {
//		this.city = city;
//	}
//	
//	public String getGender() {
//		return gender;
//	}
//	
//	public void setGender(String gender) {
//		this.gender = gender;
//	}
//
//	
//	
//	
//	public Date getCreatedAt() {
//		return createdAt;
//	}
//
//	public void setCreatedAt(Date createdAt) {
//		this.createdAt = createdAt;
//	}
//
//	public Boolean getActive() {
//		return active;
//	}
//
//	public void setActive(Boolean active) {
//		this.active = active;
//	}
//	
//	
//	
//	
}
