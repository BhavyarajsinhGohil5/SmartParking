package com.grownited.repository;

//import java.util.Optional;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

//import com.grownited.dto.ParkingDto;
import com.grownited.entity.ParkingEntity;


@Repository
public interface ParkingRepository extends JpaRepository<ParkingEntity, Integer> {
//	Optional<ParkingEntity> findByParkingId(Integer parkingId);

	@Query(value ="select p.parking_id, p.title, p.address, l.location_name, p.owner_id, p.total_capacity2wheeler, p.total_capacity4wheeler, p.hourly_charge2wheeler, p.hourly_charge4wheeler, p.parking_type, p.latitude, p.longitude from location l, parking p where p.location_id = l.location_id",nativeQuery = true)
//	List<ParkingDto> getAll();
	List<Object[]> getAll();
	
	@Query(value = "select p.parking_id, p.title, p.address, l.location_name, p.owner_id, p.total_capacity2wheeler, p.total_capacity4wheeler, p.hourly_charge2wheeler, p.hourly_charge4wheeler, p.parking_type, p.latitude, p.longitude from location l, parking p where p.location_id = l.location_id and p.parking_id = :parkingId", nativeQuery = true)
	List<Object[]> getByParkingId(Integer parkingId);
	
	List<ParkingEntity> findByActive(String active);
	
	List<ParkingEntity> findByLocationId(Integer locationId);
	
	List<ParkingEntity> findByParkingId(Integer parkingId);
}
