package com.softserve.edu.service;

import com.softserve.edu.entity.Request;
import com.softserve.edu.entity.exceptions.RequestAlreadySentException;

public interface RequestService {

	public void createRequest(Request request);

	public void checkRequest(Request request) throws RequestAlreadySentException;

}
