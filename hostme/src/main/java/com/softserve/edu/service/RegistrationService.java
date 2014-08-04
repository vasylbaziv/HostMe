package com.softserve.edu.service;

import com.softserve.edu.entity.User;

public interface RegistrationService {
	public void register(User user);

	public void register(User user, String date, String gender);

}
