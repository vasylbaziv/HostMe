package com.softserve.edu.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.User;
import com.softserve.edu.repository.UserRepository;
import com.softserve.edu.service.RegistrationService;

@Service
public class RegistrationServiceImpl implements RegistrationService {
	@Autowired
	private UserRepository userRepository;

	@Override
	@Transactional
	public void register(User user) {
		userRepository.save(user);
	}


	@Override
	@Transactional
	public User getUserByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public User getUserByLogin(String login) {
		// TODO Auto-generated method stub
		return null;
	}

//	@Autowired
//	private UserDao userDao;
//
//	@Override
//	@Transactional
//	public void register(User user) {
//		userDao.create(user);
//
//	}
//
//
//	public Gender getGender(String gender) {
//		for (Gender temporaryGender : Gender.values()) {
//			if (gender.equalsIgnoreCase(temporaryGender.toString())) {
//				return temporaryGender;
//			}
//		}
//		return Gender.UNSPECIFIED;
//
//	}
//
//	@Override
//	@Transactional
//	public void register(User user, String date, String gender) {
//		
//		register(user);
//
//	}
//
//	@Override
//	@Transactional
//	public User getUserByEmail(String email) {
//		User user = null;
//		try {
//			user = userDao.getUserByEmail(email);
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return user;
//	}
//
//	@Override
//	@Transactional
//	public User getUserByLogin(String login) {
//		User user = null;
//		try {
//			user = userDao.getUserByLogin(login);
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return user;
//	}
//
}
