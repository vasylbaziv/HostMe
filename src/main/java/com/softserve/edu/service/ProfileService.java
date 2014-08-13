package com.softserve.edu.service;

import com.softserve.edu.entity.User;

public interface ProfileService {

	public User getUser(Integer id);

	public User getUserByLogin(String login);

	public int calcAge(User user);

	public String receiveBirthday(User user);

	

}