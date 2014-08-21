package com.softserve.edu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.softserve.edu.entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	
	
	public User getUserByLogin(String login);

}
