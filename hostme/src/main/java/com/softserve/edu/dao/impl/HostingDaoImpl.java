package com.softserve.edu.dao.impl;

import org.springframework.stereotype.Repository;

import com.softserve.edu.dao.HostingDao;
import com.softserve.edu.entity.Hosting;

@Repository
public class HostingDaoImpl extends AbstractGenericDao<Hosting, Integer> implements HostingDao {
	public HostingDaoImpl() {
		super(Hosting.class);
	}
}
