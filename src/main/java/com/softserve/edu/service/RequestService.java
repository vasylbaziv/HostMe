package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.entity.Request;
import com.softserve.edu.entity.exceptions.RequestAlreadySentException;

public interface RequestService {
	public boolean removeRequest();

	public void changeStatus(Request request);

	public List<Request> getAll();

	public List<Request> getMySentRequest(int userId);

	public void createRequest(Request request);

	public void checkRequest(Request request)
			throws RequestAlreadySentException;

}
