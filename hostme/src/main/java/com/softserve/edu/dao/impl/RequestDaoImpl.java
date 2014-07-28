package com.softserve.edu.dao.impl;

import com.softserve.edu.dao.RequestDao;
import com.softserve.edu.entity.Request;

public class RequestDaoImpl extends AbstractGenericDao<Request, Long> implements RequestDao {
	public RequestDaoImpl() {
		super(Request.class);
	}
}
