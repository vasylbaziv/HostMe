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

	@Override
	public List<Request> getAll() {
		return requestRepository.findAll();
	}

	@Override
	public Request getOne(int id) {
		return requestRepository.findOne(id);
	}
}
