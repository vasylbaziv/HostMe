package com.softserve.edu.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.softserve.edu.DTO.UserDtoUtil;
import com.softserve.edu.entity.User;
import com.softserve.edu.service.RegistrationService;

@Controller
public class RegistrationController {
	@Autowired
	private RegistrationService registrationService;
	@Autowired
	private UserDtoUtil userDtoUtil;

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String registrationShow(Model model) {
		return "redirect:/index";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String addContact(@ModelAttribute("user") User user,
			BindingResult bindingResult) {
		long dateOfBirthMili = Long.parseLong((String) bindingResult.getFieldValue("birthday"));
		String gender = (String) bindingResult.getFieldValue("gender");

		registrationService.register(userDtoUtil.formRegisteredUser(user, dateOfBirthMili, gender));
		return "redirect:/login?success=true";
	}
}
