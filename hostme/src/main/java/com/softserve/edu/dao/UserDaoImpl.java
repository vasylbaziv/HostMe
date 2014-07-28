package com.softserve.edu.dao;

import org.springframework.stereotype.Repository;

import com.softserve.edu.dao.impl.AbstractGenericDao;
import com.softserve.edu.entity.User;
@Repository
public class UserDaoImpl extends AbstractGenericDao<User, Integer> implements
		UserDao {
	public UserDaoImpl() {
		super(User.class);
	}

}
