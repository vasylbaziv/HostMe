package com.softserve.edu.web;

import java.security.Principal;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.softserve.edu.entity.User;

@Controller
public class LoginController {

	// @RequestMapping(value = "/index", method = RequestMethod.GET)
	// public String executeSecurity(ModelMap model, Principal principal) {
	//
	// String name = principal.getName();
	// model.addAttribute("author", name);
	// model.addAttribute("message",
	// "Welcome To Login Form Based Spring Security Example!!!");
	// return "welcome";
	//
	// }
	//
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		User user = new User();
		model.addAttribute(user);

		return "login";

	}

	@Secured("ROLE_ADMIN")
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String logUser(@ModelAttribute("user") User user,
			BindingResult bindingResult) {
		System.out.println(bindingResult.getFieldValue("login"));
		System.out.println(bindingResult.getFieldValue("password"));
		return "index";

	}
	//
	// @RequestMapping(value = "/fail2login", method = RequestMethod.GET)
	// public String loginerror(ModelMap model) {
	//
	// model.addAttribute("error", "true");
	// return "login";
	//
	// }
	//
	// @RequestMapping(value = "/logout", method = RequestMethod.GET)
	// public String logout(ModelMap model) {
	//
	// return "login";
	//
	// }

}
