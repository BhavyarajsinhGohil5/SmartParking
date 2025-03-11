package com.grownited.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.ParkingSlotEntity;



@Repository
public interface ParkingSlotRepository extends JpaRepository<ParkingSlotEntity, Integer> {
	Optional<ParkingSlotEntity> findByParkingslotId(Integer parkingslotId);

}
