package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.entity.Request;
import com.softserve.edu.entity.exceptions.RequestAlreadySentException;

public interface RequestService {
	public List<Request> getAll();
	public Request getOne(int id);

	public void createRequest(Request request);

	public boolean checkRequest(Request request) throws RequestAlreadySentException;

}
