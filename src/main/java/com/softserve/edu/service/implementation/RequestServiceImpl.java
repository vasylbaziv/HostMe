package com.softserve.edu.service.implementation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.Request;
import com.softserve.edu.entity.exceptions.RequestAlreadySentException;
import com.softserve.edu.repository.RequestRepository;
import com.softserve.edu.service.RequestService;

@Service
public class RequestServiceImpl implements RequestService {
	@Autowired
	private RequestRepository requestRepository;

	@Override
	public void createRequest(Request request) {
		requestRepository.save(request);
	}

	@Override
	@Transactional
	public boolean checkRequest(Request request)
			throws RequestAlreadySentException {
		List<Request> requests = requestRepository.checkExistingRequest(
				request.getEndDate(), request.getBeginDate(),
				request.getHosting(), request.getAuthor());

		if (!requests.isEmpty()) {
			throw new RequestAlreadySentException();
		}
		return true;

	}
	// @Autowired
	// private RequestDao requestDao;
	//
	// @Override
	// @Transactional
	// public void createRequest(Request request) {
	// requestDao.create(request);
	// }
	//
	// @Override
	// @Transactional
	// public void checkRequest(Request request)
	// throws RequestAlreadySentException {
	// requestDao.checkRequest(request);
	// }
}
