package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.LocationEntity;

@Repository
public interface LocationRepository extends JpaRepository<LocationEntity, Integer> {
	
	
			
	
	@Query(value ="select l.* from location l",nativeQuery = true)
//	List<ParkingDto> getAll();
	List<Object[]> getAll();
	
	
	@Query(value = "select l.* from location l where l.location_id = :locationId", nativeQuery = true)
	List<Object[]> getByLocationId(Integer locationId);
}
