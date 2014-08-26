package com.softserve.edu.service.implementation;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.dao.UserDao;
import com.softserve.edu.entity.User;
import com.softserve.edu.service.ProfileService;

@Service
public class ProfileServiceImpl implements ProfileService {

	@Autowired
	private UserDao userDaoImpl;

	@Override
	@Transactional
	public User getUser(Integer id) {
		return userDaoImpl.read(id);
	}

	@Override
	@Transactional
	public User getUserByLogin(String login) {
		return userDaoImpl.getUserByLogin(login);
	}

	public int calcAge(User user) {

		Calendar now = new GregorianCalendar();
		int age = now.get(Calendar.YEAR)
				- user.getBirthday().get(Calendar.YEAR);
		if ((user.getBirthday().get(Calendar.MONTH) > now.get(Calendar.MONTH))
				|| (user.getBirthday().get(Calendar.MONTH)) == now
						.get(Calendar.MONTH)
				&& user.getBirthday().get(Calendar.DAY_OF_MONTH) > now
						.get(Calendar.DAY_OF_MONTH)) {
			age--;
		}
		System.out.println(age);
		return age;
	}

	@Override
	public String receiveBirthday(User user) {

		return new SimpleDateFormat("dd.MM.yyyy").format(user.getBirthday()
				.getTime());
	}

}
