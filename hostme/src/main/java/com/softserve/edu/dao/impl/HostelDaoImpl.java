package com.softserve.edu.dao.impl;

import com.softserve.edu.dao.HostelDao;
import com.softserve.edu.entity.Hostel;

public class HostelDaoImpl extends AbstractGenericDao<Hostel, Integer> implements HostelDao {
	public HostelDaoImpl() {
		super(Hostel.class);
	}
}
