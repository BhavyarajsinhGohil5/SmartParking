package com.grownited.repository;

import java.util.Optional;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.grownited.entity.ReservationEntity;

@Repository
public interface ReservationRepository extends JpaRepository<ReservationEntity, Integer> {
	
	
	@Query(value = "select r.reservation_id, r.date, r.start_time, r.end_time, r.payment_status, r.amount_paid, r.security_amount_paid, v.vehicle_reg_no, v.vehicle_type, u.first_name, u.last_name, p.title, p.address, p.latitude, p.longitude from reservation r, vehicle v, users u, parking p where r.parking_id = p.parking_id and r.vehicle_id = v.vehicle_id and r.user_id = u.user_id", nativeQuery = true)
	List<Object[]> getAll();
	//findByReservationId(Integer reservationId);
//	select r.reservation_id, r.date, r.start_time, r.end_time, r.payment_status, r.amount_paid, r.security_amount_paid , u.first_name , u.last_name, p.title, p.address, p.latitude p.longitude, v.vehicle_id, v.vehicle_reg_no, v.vehicle_type from reservation r, users u, parking p, vehicle v where r.vehicle_id = v.vehicle_id

//select r.*, u.first_name , u.last_name, p.title, p.address, p.latitude, p.longitude, v.vehicle_id, v.vehicle_reg_no, v.vehicle_type from reservation r, users u, parking p, vehicle v where r.vehicle_id = v.vehicle_id and r.user_id = u.user_id and r.parking_id = p.parking_id;

	@Query(value = "select r.*, u.first_name , u.last_name, p.title, p.address, p.latitude, p.longitude, v.vehicle_id, v.vehicle_reg_no, v.vehicle_type from reservation r, users u, parking p, vehicle v where r.vehicle_id = v.vehicle_id and r.user_id = u.user_id and r.parking_id = p.parking_id and r.reservation_id = :reservationId", nativeQuery = true)
	List<Object[]> getByReservationId(Integer reservationId);
	
	
	
	
	@Query(nativeQuery = true,value=" select count(*)  from reservation where month(date) = :month")// and role = 'USER'
	Integer countThisMonthReservations(Integer month);
	
//	@Query(value = "select r.reservation_id, r.date, r.start_time, r.end_time, r.payment_status, r.amount_paid, r.security_amount_paid, v.vehicle_reg_no, v.vehicle_type, u.first_name, u.last_name, p.title, p.address, p.latitude, p.longitude from reservation r, vehicle v, users u, parking p where r.parking_id = p.parking_id and r.vehicle_id = v.vehicle_id and r.user_id = u.user_id and r.user_id = :userId", nativeQuery = true)
//	List<Object[]> getAllByUserId(Integer userId);

	@Query(value = "select r.reservation_id, r.date, r.start_time, r.end_time, r.payment_status, r.amount_paid, r.security_amount_paid, v.vehicle_reg_no, v.vehicle_type, u.first_name, u.last_name, p.title, p.address, p.latitude, p.longitude, l.location_name from reservation r, vehicle v, users u, parking p, location l where r.parking_id = p.parking_id and r.vehicle_id = v.vehicle_id and r.user_id = u.user_id and p.location_id = l.location_id and r.user_id = :userId", nativeQuery = true)
	List<Object[]> getAllByUserId(Integer userId);


//	 Optional<ReservationEntity> findFirstByUserIdOrderByReservationDateDesc(Integer userId);

	 Optional<ReservationEntity> findFirstByUserIdOrderByDateDesc(Integer userId);

//	 @Query(value = "SELECT DISTINCT u.* FROM reservation r JOIN user u ON r.user_id = u.user_id", nativeQuery = true)
//	 List<UserEntity> findAllUser();
}


