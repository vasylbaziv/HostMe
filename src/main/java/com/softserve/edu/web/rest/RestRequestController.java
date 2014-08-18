package com.softserve.edu.web.rest;

import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.softserve.edu.DTO.RequestDtoUtil;
import com.softserve.edu.entity.Hosting;
import com.softserve.edu.entity.Request;
import com.softserve.edu.entity.Status;
import com.softserve.edu.entity.User;
import com.softserve.edu.entity.exceptions.RequestAlreadySentException;
import com.softserve.edu.entity.exceptions.RequestCannotSendException;
import com.softserve.edu.service.ProfileService;
import com.softserve.edu.service.RequestService;

@RestController
public class RestRequestController {
	@Autowired
	private RequestService requestService;
	@Autowired
	private RequestDtoUtil requestDtoUtil;

	@RequestMapping(value = "/response", method = RequestMethod.GET)
	public String processUserRequest(
			@RequestParam(value = "beginDate") long beginDate,
			@RequestParam(value = "endDate") long endDate,
			@RequestParam(value = "hostingId") int hostingId) {
		Authentication authentication = SecurityContextHolder.getContext()
				.getAuthentication();
		String login = authentication.getName();
		try {
			Request request= requestDtoUtil.formRequestModel(
					endDate, beginDate, Status.PENDING, hostingId, login, "");
			requestService.checkRequest(request);
			requestService.createRequest(request);
			Thread.sleep(1000);

		} catch (RequestCannotSendException e) {

			e.printStackTrace();
			return e.getMessage();
		} catch (RequestAlreadySentException e) {
			e.printStackTrace();
			return e.getMessage();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		return "Request send";

	}

}
