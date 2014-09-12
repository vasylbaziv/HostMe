package com.softserve.edu.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.softserve.edu.dao.SystemPropertiesDao;
import com.softserve.edu.entity.SystemProperties;

@Repository
public class SystemPropertiesDaoImpl extends
		AbstractGenericDao<SystemProperties, Integer> implements
		SystemPropertiesDao {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	public SystemPropertiesDaoImpl() {
		super(SystemProperties.class);
	}
	
	@Override
	public List<SystemProperties> getPropeties(String prop) {
		Session session = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		Criteria cr = session.createCriteria(SystemProperties.class);
		cr.add(Restrictions.eq("propKey", prop));
		List<SystemProperties> path = cr.list();
		return path;
	}
}