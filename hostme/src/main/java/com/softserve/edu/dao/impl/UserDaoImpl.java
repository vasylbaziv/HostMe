package com.softserve.edu.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.softserve.edu.dao.UserDao;
import com.softserve.edu.entity.User;

@Repository
public class UserDaoImpl extends AbstractGenericDao<User, Integer> implements
		UserDao {
	public UserDaoImpl() {
		super(User.class);
	}

	@Override
	public User getUserByEmail(String email) {
		Criteria criteria = getSessionFactory().getCurrentSession()
				.createCriteria(User.class);
		criteria.add(Restrictions.eq("email", email));
		User user = (User) criteria.list().get(0);
		return user;
	}

	@Override
	public User getUserByLogin(String login) {
		Criteria criteria = getSessionFactory().getCurrentSession()
				.createCriteria(User.class);
		criteria.add(Restrictions.eq("login", login));
		User user = (User) criteria.list().get(0);
		return user;
	}

}
