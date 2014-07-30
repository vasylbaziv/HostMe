package com.softserve.edu.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.softserve.edu.entity.Gender;
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
		user.setBirthday(toDateFormat(birthday));
		for (Gender temporaryGender : Gender.values()) {
			if (gender.equalsIgnoreCase(temporaryGender.toString())) {
				user.setGender(temporaryGender);
				break;

			} else {
				user.setGender(Gender.UNSPECIFIED);
			}

		}
		registrationService.register(user);
		return "index";
	}

	private Calendar toDateFormat(String inputValue) {
		Calendar birthday = null;
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		try {
			sdf.getCalendar().setTime(sdf.parse(inputValue));
			birthday = sdf.getCalendar();

		} catch (ParseException e) {
			e.printStackTrace();
		}
		return birthday;
	}

}
