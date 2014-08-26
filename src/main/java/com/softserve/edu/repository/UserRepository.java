package com.softserve.edu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.softserve.edu.entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	
	@Query("SELECT us FROM User us JOIN FETCH us.languages JOIN FETCH us.hostings  WHERE us.login=:login")
	public User getUserByLogin(@Param("login")String login);
	@Query("SELECT us FROM User us JOIN FETCH us.languages JOIN FETCH us.hostings  WHERE us.userId=:userId")
	public User getUserById(@Param("userId")int userId);

}
