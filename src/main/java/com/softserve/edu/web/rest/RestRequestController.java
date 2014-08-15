package com.softserve.edu.web.rest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestRequestController {
	@RequestMapping("response")
	public Boolean processUserRequest(
			@RequestParam(value="id")int id) {
		boolean result = false;
		System.out.println(id);
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;

	}

}
