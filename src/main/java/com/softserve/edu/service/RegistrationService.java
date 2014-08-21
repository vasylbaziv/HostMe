package com.softserve.edu.service;

import com.softserve.edu.entity.User;

public interface RegistrationService {
	public void register(User user);

	public User getUserByEmail(String email);

	public User getUserByLogin(String login);

}
