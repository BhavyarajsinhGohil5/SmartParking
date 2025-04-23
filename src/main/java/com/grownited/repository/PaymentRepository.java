package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.grownited.entity.PaymentEntity;

@Repository
public interface PaymentRepository extends JpaRepository<PaymentEntity, Integer>{

	@Query(value = "select pay.*, u.first_name, u.last_name, v.vehicle_reg_no from payment pay,users u, vehicle v where pay.user_id=u.user_id and pay.user_id = v.user_id", nativeQuery = true)
	List<Object[]> getAll();
	
	
	
	@Query(value = "select pay.*, u.first_name, u.last_name, v.vehicle_reg_no from payment pay,users u, vehicle v where pay.user_id=u.user_id and pay.user_id = v.user_id and pay.payment_id= :paymentId", nativeQuery = true)
	List<Object[]> getByPaymentId(Integer paymentId);
	
}
