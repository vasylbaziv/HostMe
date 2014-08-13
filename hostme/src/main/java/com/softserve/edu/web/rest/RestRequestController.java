package com.softserve.edu.web.rest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestRequestController {
	@RequestMapping("response")
	public Boolean processUserRequest(
			@RequestParam(value = "userId") int userId,
			@RequestParam(value = "hostingId") int hostingId) {
		boolean result = false;

		return result;

	}

}
