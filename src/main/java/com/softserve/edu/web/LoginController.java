package com.softserve.edu.web;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	/*
	 * Just now we are using default spring-security bean for login-processing,
	 * so this controller has no logic.
	 */
	@Secured("! isAuthenticated()")
	@RequestMapping("/login")
	public String login() {
		
		System.out.println("Tvaruno!");
		return "login";
	}
}