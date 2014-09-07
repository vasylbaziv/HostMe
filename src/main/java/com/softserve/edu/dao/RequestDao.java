package com.softserve.edu.dao;

import java.util.List;

import com.softserve.edu.entity.Request;
import com.softserve.edu.entity.exceptions.RequestAlreadySentException;

public interface RequestDao extends GenericDao<Request, Long> {
	public boolean checkRequest(Request request) throws RequestAlreadySentException;
	
	public List<Request> getAllRequestsByHostingId(int hostingId);
}
