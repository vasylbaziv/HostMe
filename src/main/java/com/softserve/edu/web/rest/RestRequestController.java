package com.softserve.edu.web.rest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestRequestController {
	@RequestMapping(value = "/response", method = RequestMethod.GET)
	public Boolean processUserRequest(
			@RequestParam(value = "beginDate") long beginDate,
			@RequestParam(value = "endDate") long endDate,
			@RequestParam(value = "hostingId") int hostingId) {
		
		boolean result = false;
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;

	}

}
