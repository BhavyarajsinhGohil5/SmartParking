package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.UserEntity;
import java.util.Optional;
import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {
	Optional<UserEntity> findByEmail(String email);
	
	@Query(value ="select u.* from users u",nativeQuery = true)
	List<Object[]> getAll();
	
	
	@Query(value = "select u.* from users u where u.user_id = :userId", nativeQuery = true)
	List<Object[]> getByUserId(Integer userId);
	
	
	
	List<UserEntity> findByRole(String role);
	
	
//	@Query(nativeQuery = true,value=" select count(*)  from users where month(created_at) = :month and role = 'USER'")
//	Integer countThisMonthUsers(Integer month);
//	
	
	List<UserEntity> findByRoleAndActive(String role,Boolean active);
	
}
