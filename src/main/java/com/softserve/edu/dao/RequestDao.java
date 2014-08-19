package com.softserve.edu.dao;

import com.softserve.edu.entity.Request;
import com.softserve.edu.entity.exceptions.RequestAlreadySentException;

public interface RequestDao extends GenericDao<Request, Long> {
	public boolean checkRequest(Request request) throws RequestAlreadySentException;
}
