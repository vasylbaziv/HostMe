package com.softserve.edu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.dao.UserDao;
import com.softserve.edu.entity.User;
@Service
public class RegistrationServiceImpl implements RegistrationService {

	@Autowired
	private UserDao userDao;
	@Override
	@Transactional
	public void register(User user) {
		userDao.create(user);
		
	}

}
