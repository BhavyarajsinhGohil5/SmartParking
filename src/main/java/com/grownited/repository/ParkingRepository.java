package com.grownited.repository;

import java.util.Optional;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.dto.ParkingDto;
import com.grownited.entity.ParkingEntity;


@Repository
public interface ParkingRepository extends JpaRepository<ParkingEntity, Integer> {
	//Optional<ParkingEntity> findByParkingId(Integer parkingId);

	@Query(value = "select p.*,l.locationName from location l,parking p where l.locationId = p.locationId",nativeQuery = true)
	List<ParkingDto> getAll();

}
