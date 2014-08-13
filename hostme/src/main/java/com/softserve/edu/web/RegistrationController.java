package com.softserve.edu.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.softserve.edu.entity.User;
import com.softserve.edu.service.RegistrationService;

@Controller
public class RegistrationController {
	@Autowired
	private RegistrationService registrationService;

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String registrationShow(Model model) {
		User user = new User();
		model.addAttribute("user", user);

		return "registration";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String addContact(@ModelAttribute("user") User user,
			BindingResult bindingResult) {
		String birthday = (String) bindingResult.getFieldValue("birthday");
		String gender = (String) bindingResult.getFieldValue("gender");

		registrationService.register(user,birthday,gender);
		return "redirect:/login?success=true";
	}
}
