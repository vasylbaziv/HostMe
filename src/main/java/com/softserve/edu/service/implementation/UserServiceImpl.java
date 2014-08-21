package com.softserve.edu.service.implementation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.softserve.edu.entity.User;
import com.softserve.edu.repository.UserRepository;
import com.softserve.edu.service.UserService;

@Service
public class UserServiceImpl implements UserService {
@Autowired
private UserRepository userRepository;

	@Override
	public List<User> getAllUsers() {
		return userRepository.findAll();
	}

	@Override
	public Integer addUser(User user) {
		return userRepository.save(user).getUserId();
	}

	@Override
	public void updateUser(User user) {
		userRepository.save(user);
	}

	@Override
	public User getUser(Integer id) {
		return userRepository.findOne(id);
	}

	@Override
	public void removeUser(Integer id) {
		userRepository.delete(id);
	}

	@Override
	public void initilizeUserLanguages(User user) {
		// TODO Auto-generated method stub
		
	}
	
}
